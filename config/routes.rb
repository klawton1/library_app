Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:index, :new, :show, :create]

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
