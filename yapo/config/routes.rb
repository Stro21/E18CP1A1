Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/search' #if method on UserController is search
  root to: 'users#search'
  
end
