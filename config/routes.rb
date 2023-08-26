Rails.application.routes.draw do
  devise_scope :user do
    get "users", to: "devise/sessions#new"
    get 'admin', to: 'devise/sessions#new'
  end
  devise_for :users

  resources :admin do
    collection do
      resources :dashboard
    end
  end

  namespace :admin do
    resources :articles
  end

  namespace :client do
    resources :articles
  end

  root 'site#index'
end
