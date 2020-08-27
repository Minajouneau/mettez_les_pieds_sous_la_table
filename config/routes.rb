Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :restaurants
  resources :users, only: [:update]
  get "profile/edit", to: "users#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
