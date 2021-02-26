Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  resources :projects, only: [:show, :index, :new, :create] do
  end
  get "/contact", to: "pages#contact"
  get "/about", to: "pages#about"
  get "/legal-notice", to: "pages#legal_notice"
end
