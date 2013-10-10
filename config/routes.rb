Bookstore::Application.routes.draw do
  resources :books, only: :index do
    collection do
      post :import
      get :autocomplete
    end
  end

  root to: 'books#index'
end
