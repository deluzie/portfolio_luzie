Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:show, :index, :new, :create] do
  end

  resources :contacts, only: [:new, :create]  do
  end

  resources :pages, only: [:about, :legal_notice] do
  end

end
