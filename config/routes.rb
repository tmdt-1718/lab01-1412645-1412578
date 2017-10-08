Rails.application.routes.draw do
  get 'about' => 'about#index'

  resources :blog, only: [:index, :show]
  get 'albums' => 'albums#index'

  get 'home' => 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
