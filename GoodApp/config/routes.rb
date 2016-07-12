Rails.application.routes.draw do
  resources :user

  get 'genres/index' => 'genres#index'

  get 'publisher/show'

  get 'publisher/home'

  get 'author/show'

  get 'author/home'

  get 'books/index' => 'books#index'

  get 'books/:id' => 'books#show', as: :book

  get 'auth/:provider/callback', to: 'sessions#create'
  
  get 'auth/failure', to: redirect('/')
  
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  root 'homepage#show'

  get '/show' => 'homepage#show'
  
end
