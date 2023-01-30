Rails.application.routes.draw do
  devise_for :members
  root to: "posts#index"
  resources :posts, only: [:new, :create, :index]
end
