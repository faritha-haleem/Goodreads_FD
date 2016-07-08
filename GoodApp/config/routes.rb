Rails.application.routes.draw do

  get 'genres/show'

  resources :user

  get 'publisher/show'

  get 'publisher/home'

  get 'author/show'

  get 'author/home'

  get 'books/show'

  get 'books/review'

  get 'books/rate'

  root 'homepage#show'

  get 'user/create'

  get 'user/login'
  get 'genre/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/about', :to => 'authors#about'
  get '/books', :to => 'authors#books'
  get '/show', :to => 'homepage#show'
end
