Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  get 'home/index'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'boards#index'
  resources :users, only: %i[new create]
  resources :boards
  resources :comments, only: %i[create destroy]
end
