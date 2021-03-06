Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  root 'books#top'
  get '/top' => 'books#top'
  get '/about' => 'users#about'
end