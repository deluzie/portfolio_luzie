Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  resources :projects, only: [:show, :index, :new, :create] do
  end
end
