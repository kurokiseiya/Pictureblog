Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "home#top"
  resources :pictures do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:edit, :update, :show]
end
