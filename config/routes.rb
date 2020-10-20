Rails.application.routes.draw do
  resources :notes
  resources :users

  
post '/users/sessions/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
