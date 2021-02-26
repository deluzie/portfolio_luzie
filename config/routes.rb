Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:show, :index, :new, :create]

  # resources :contacts, only: [:new, :create]

  get "/about", to: "pages#about"
  get "/legal-notice", to: "pages#legal_notice"

end
