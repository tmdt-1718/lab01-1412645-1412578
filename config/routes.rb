Rails.application.routes.draw do
  get 'about' => 'about#index'

  get 'blog' => 'blog#index'

  resources :albums
  resources :picture
  
  get 'home' => 'home#index'


  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
