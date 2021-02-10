Rails.application.routes.draw do
  get "about", to: "about#index"
  get "sign_up", to: "registration#new"
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  post "sign_up", to: "registration#create"
  get "sign_in", to: "session#new"
  post "sign_in", to: "session#create"
  delete "log_out" ,to: "session#destroy"
  root to: "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
