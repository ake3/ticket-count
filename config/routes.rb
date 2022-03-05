Rails.application.routes.draw do
  devise_for :users
  resources :counts, only: [:new, :create, :index, :delete] do
    collection do
      delete 'destroy_all'
    end
  end
  resources :checks, only: [:new, :create, :index, :delete] 
  root to: "counts#new"
end
