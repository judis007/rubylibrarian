Rails.application.routes.draw do
  
  resources :books
  resources :students
  root :to => "students#index"
end
