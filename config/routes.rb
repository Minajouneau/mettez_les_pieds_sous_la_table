Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :users, only: [:update]
  get "profile/edit", to: "users#edit"
  resources :restaurants do
    member do
      post "update_activation"
    end
      resources :photos, only: [:create]
  end
end
