Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create] do
    resources :comments, only: [:index, :create]
  end
  resources :users, only: [:index, :show]
end
