Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/new'
  get 'doctors/show'
  get 'doctors/edit'
  get 'home/index'
  devise_for :users
  resources :profiles 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
