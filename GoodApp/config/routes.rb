Rails.application.routes.draw do
  get 'publisher/show'

  get 'publisher/home'

  get 'author/show'

  get 'author/home'

  get 'books/show'

  get 'books/review'

  get 'books/rate'

  get 'user/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', :to => 'authors#about'
  get '/books', :to => 'authors#books'
end
