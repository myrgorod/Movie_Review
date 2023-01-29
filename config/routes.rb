Rails.application.routes.draw do
  resources :reviews
  resources :categories
  authenticated :user, ->(user){user.admin?} do
  get 'admin', to: 'admin#index'
  get 'admin/movies'
  get 'admin/users'
  get 'admin/show_movie/:id', to: "admin#show_movie", as: 'admin_movie'
  end
  devise_for :users
  root to: 'movies#index'
  resources :movies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
