Rails.application.routes.draw do
  root 'home#index'
  resources :cars
  resources :posts

  # get '/posts', to: 'posts#index'
  # get '/posts/new', to: 'posts#new', as: 'new_post'
  # get '/posts/:id', to: 'posts#show', as: 'post'
  # get '/posts/edit', to: 'posts#edit', as: 'edit_post'
  # post '/posts', to: 'posts#create'
  # put '/posts', to: 'posts#update'
  # delete '/posts/destroy', to: 'posts#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
