Rails.application.routes.draw do
  resources :review
  resources :user
  #resources :books

  #post 'books/review/create'

  get 'review/show'

  get 'genres/show'

  get 'publisher/show'

  get 'publisher/home'

  get 'authors/show'

  get 'author/home'

  get 'books/index'

  get 'books/show'

  post 'books/review'

  get 'books/rate'

  root 'homepage#show'

  get 'user/create'

  get 'user/login'

  get 'user/show'

  get 'genre/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/about', :to => 'authors#about'
  get '/books', :to => 'authors#books'
  get '/show', :to => 'homepage#show'
  get '/review',:to => 'books#review'
end
