Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:show, :index, :new, :create]

  # resources :contacts, only: [:new, :create]

  resources :pages, only: [:about, :legal_notice]
end
