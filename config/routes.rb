Rails.application.routes.draw do
  
  constraints(host: /^www\.(?!cute\.)/i) do 
    match '(*any)', via: :all, to: redirect { |params, request|
      URI.parse(request.url).tap { |uri| uri.host.sub!(/^www\./i, '') }.to_s 
    }
  end
  
  mount ActionCable.server => '/cable'

  root to: 'pages#home'

  get 'about-me', to: 'pages#about'
  get 'pricing', to: 'pages#pricing'
  get 'offer', to: 'pages#offer'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  resources :recipes

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  get 'contact_forms', to: 'contact_forms#new'
  resources :contact_forms, only: [:new, :create]
end
