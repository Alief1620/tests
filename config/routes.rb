Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/delete'
  resources :users
  get 'books/new'
  get 'books/create'
  resources :books
end
