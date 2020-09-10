Rails.application.routes.draw do
  # get '', to: 'restaurants#show', constraints: { subdomain: /w?(?!w)\w+/ }
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :users, only: [:update]
  get "profile/edit", to: "users#edit"
  resources :photos, only: [:destroy]
  resources :restaurants do
    member do
      post "update_activation"
    end
      resources :photos, only: [:create]
  end
  resources :schedules, only: [:update]

end
