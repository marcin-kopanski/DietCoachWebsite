Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  root to: 'pages#home'
  
  get 'about-me', to: 'pages#about'
  get 'pricing', to: 'pages#pricing'
  get 'offer', to: 'pages#offer'
  get 'recipes', to: 'pages#recipes'
  get 'contact', to: 'pages#contact'
end
