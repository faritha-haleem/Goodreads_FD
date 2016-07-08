Rails.application.routes.draw do
  get 'homepage/show'

  resources :user

  get 'publisher/show'

  get 'publisher/home'

  get 'author/show'

  get 'author/home'

  get 'books/show'

  get 'books/review'

  get 'books/rate'

  root 'user#welcome'

  get 'user/create'

  get 'user/homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', :to => 'authors#about'
  get '/books', :to => 'authors#books'
  get '/show', :to => 'homepage#show'
end
