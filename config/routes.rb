Rails.application.routes.draw do
  devise_for :users
  resources :counts, only: [:new, :create, :index] 
  resources :checks, only: [:new, :create, :index]
  root to: "counts#new"
end
