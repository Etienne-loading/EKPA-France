Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :formations, only: [:index, :show]
  resources :blocs, only: [:index]
  resources :organisme, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
