Rails.application.routes.draw do
  resources :users, only: [:index, :show, :destroy, :create]
  resources :posts, only: [:index, :show, :destroy, :create]
end
