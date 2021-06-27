Rails.application.routes.draw do

  root 'books#index'
  
  resources :books
  resources :students, except: [:show]
end
