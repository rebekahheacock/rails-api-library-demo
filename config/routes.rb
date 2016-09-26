Rails.application.routes.draw do
  resources :loans, except: [:new, :edit]
  resources :borrowers, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  # above line is same as
  # resources :examples, only: [:index, :show, :create, :update, :destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'
  # post '/books', to: 'books#create'
  # patch '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy'
  # instead of above five routes could use
  # resources :books, only: [:index, :show, :create, :update, :destroy]
  # or
  resources :books, except: [:new, :edit]
  # new and edit render the views; create and update deal w/database
  resources :authors, except: [:new, :edit]
end
