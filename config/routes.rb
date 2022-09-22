Rails.application.routes.draw do
  # get 'appointments/index'
  # get 'appointments/show'
  # get 'appointments/new'
  # get 'appointments/create'
  # get 'appointments/destroy'
  # get 'doctors/index'
  # get 'doctors/new'
  # get 'doctors/show'
  # get 'doctors/edit'
  get 'home/index'
  devise_for :users
  resources :profiles 
  resources :doctors
  resources :appointments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end