Rails.application.routes.draw do
  root :to => 'lines#index'

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :lines
  resources :admins
end
