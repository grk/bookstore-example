Bookstore::Application.routes.draw do
  resources :books, only: :index do
    post :import, on: :collection
  end

  root to: 'books#index'
end
