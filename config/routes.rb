Rails.application.routes.draw do
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

  resources :recipes, except: [:show]
  get 'recipe/:id', to: 'recipes#show', as: 'recipe_show'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
end
