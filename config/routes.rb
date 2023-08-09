Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :formations
  resources :organismes, only: [:index, :new, :create]
  get '/catalogue', to: 'pages#catalogue', as: :catalogue
  get '/contact', to: 'pages#contact', as: :contact
  get '/mon_cpf', to: 'pages#cpf', as: :mon_cpf
  get '/ekpafrance', to: 'pages#ekpa', as: :ekpa
end
