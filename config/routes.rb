Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:new, :show, :create]
  get "/users/:user_id/libraries", to: "library_users#index", as: 'user_libraries'
  post "/libraries/:library_id/users", to: "library_users#create", as: "new_user_library" 

  resources :libraries, only: [:index, :new, :show]
  post "/libraries", to: "libraries#create"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
