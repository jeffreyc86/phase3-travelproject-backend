Rails.application.routes.draw do
  resources :comments
  resources :videos
  resources :users
  resources :cities

  post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
