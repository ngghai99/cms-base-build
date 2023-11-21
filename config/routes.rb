Rails.application.routes.draw do
  devise_scope :user do
    get "users", to: "devise/sessions#new", as: 'user_login'
    get 'admin', to: 'devise/sessions#new', as: 'admin_login'

  end
  devise_for :users

  namespace :admin do
    get '', to: 'dashboard#index'
    resources :dashboard
    resources :articles
    resources :users
    resources :clients
    resources :article_categories
  end

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end

  namespace :client do
    resources :articles
  end

  root 'site#index'
end
