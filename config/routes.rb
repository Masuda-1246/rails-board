Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :boards
  resources :comments, only: %i[create destroy]
end
