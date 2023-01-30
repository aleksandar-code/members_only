Rails.application.routes.draw do
  devise_for :members
  root to: "posts#index"
  resources :members
  resources :posts, only: [:new, :create, :index]
end
