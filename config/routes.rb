Rails.application.routes.draw do
  resources :cohorts
  resources :members
  resources :projects
  resources :users, only: [:index, :create, :show]
  get "/get_user", to: "users#get_user"
  # post "/post_user", to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
