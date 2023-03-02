Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'lists/index'
  # get 'lists/new'
  # get 'lists/create'
  # get 'lists/show'
  # get 'lists/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :lists, except: [:edit, :update] do
  #   resources :bookmarks, only: [:new, :create]
  # get 'lists/create', to: 'lists#add_movies'
  # end
  # Defines the root path route ("/")
  root 'lists#index'
  get '/movies', to: 'movies#index'
  resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end
  resources :bookmarks, only: :destroy
end
