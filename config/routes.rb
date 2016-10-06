Rails.application.routes.draw do

  resources :doctors, :appoints, :availability

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "profile" => "users#show"
  get "signup" => "users#new"
  post "signup" => "users#create"
  delete "delete/:id" => "users#destroy"

  root "appoints#new" # Jon: For development purposes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
