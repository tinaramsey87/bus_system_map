Rails.application.routes.draw do
  root :to => 'lines#index'
  
  resources :lines
end
