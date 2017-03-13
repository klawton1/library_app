Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:new, :show, :create]
  get "/users/:user_id/libraries", to: "library_users#index", as: 'user_libraries'
  post "/libraries/:library_id/users", to: "library_users#create", as: "new_user_library" 

  resources :libraries, only: [:index, :new, :show]

  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  post "/sessions" => "sessions#create"

end
