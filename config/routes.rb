Rails.application.routes.draw do
  resources :comments
  resources :videos
  resources :users
  resources :cities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
