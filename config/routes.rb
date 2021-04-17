Rails.application.routes.draw do
  
  resources :books
  resources :students, except: [:show]
end
