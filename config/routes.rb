Rails.application.routes.draw do
  root to: 'pages#home'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'weight', to: 'pages#weight_program'
  get 'recipes', to: 'pages#recipes'
end
