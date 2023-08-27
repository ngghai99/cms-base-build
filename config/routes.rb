Rails.application.routes.draw do
  devise_scope :user do
    get "users", to: "devise/sessions#new", as: 'user_login'
    get 'admin', to: 'devise/sessions#new', as: 'admin_login'

  end
  devise_for :users

  namespace :admin do
    get '', to: 'dashboard#index', as: 'admin_dashboard_root'

    resource :dashboard
    resources :articles
  end

  namespace :client do
    resources :articles
  end

  root 'site#index'
end
