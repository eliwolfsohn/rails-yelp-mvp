Rails.application.routes.draw do
  # get 'reviews/new', to: "reviews#new"
  # get 'reviews/create', to: "reviews#create"
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/show'
  # get 'restaurant/index'
  # get 'restaurant/new'
  # get 'restaurant/create'
  # get 'restaurant/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :index, :new, :create ]
  end
end
