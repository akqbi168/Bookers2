Rails.application.routes.draw do
<<<<<<< HEAD
  # get 'users/show'
  devise_for :users
  root 'books#index'

  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
=======
  devise_for :users

  root 'books#index'

  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :books, only: [:new, :create, :index, :show, :destroy]


>>>>>>> origin/master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
