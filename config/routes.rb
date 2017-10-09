Rails.application.routes.draw do
  get 'about' => 'about#index'
  resources :albums
  resources :picture
  resources :session, only: [:create, :destroy]
  resources :user, only: [:create]
  get "session/login", to: "session#login", as: "session_login"
  get "session/register", to: "session#register", as: "session_register"
  resources :blog, only: [:index, :show, :create]
  get 'home' => 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
