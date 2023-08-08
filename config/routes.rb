Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :formations, only: [:index, :show, :new, :create]
  resources :blocs, only: [:index]
  resources :organismes, only: [:index, :new, :create]
  get '/catalogue', to: 'pages#catalogue', as: :catalogue
  get '/contact', to: 'pages#contact', as: :contact
  get '/mon_cpf', to: 'pages#cpf', as: :mon_cpf
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
