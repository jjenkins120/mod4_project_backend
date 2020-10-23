Rails.application.routes.draw do
  resources :notes
  resources :users

  
post '/users/sessions/login', to: 'users#login'
get '/users/sessions/current_user', to: 'users#current_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
