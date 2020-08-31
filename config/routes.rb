Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :users, only: [:update]
  get "profile/edit", to: "users#edit"
  resources :restaurants, only: [:index, :new, :create, :edit, :update, :destroy] do
    member do
      post "update_activation"
    end
      resources :photos, only: [:create]
  end
  if Rails.env.production?
    resources :restaurants, only: :show, constraints: { subdomain: 'app' }
  else
    resources :restaurants, only: :show
  end
end
