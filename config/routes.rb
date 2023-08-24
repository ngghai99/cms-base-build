Rails.application.routes.draw do
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

  end
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root 'dashboard#index'
  root 'site#index'
end
