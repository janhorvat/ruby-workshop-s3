Rails.application.routes.draw do
  devise_for :users
  root to: "test#hello"
  get "/hello/:what", to: "test#hello"
  resources :users, only: [:index]
end
