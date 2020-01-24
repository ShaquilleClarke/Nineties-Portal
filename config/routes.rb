Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # home/about pages

  root 'application#home', as: 'home'
  get '/about', to: 'application#about', as: 'about'

  # years

  get '/years', to: 'years#years', as: 'years'

  get '/1990', to: 'years#y_1990'
  get '/1991', to: 'years#y_1991'
  get '/1992', to: 'years#y_1992'
  get '/1993', to: 'years#y_1993'
  get '/1994', to: 'years#y_1994'
  get '/1995', to: 'years#y_1995'
  get '/1996', to: 'years#y_1996'
  get '/1997', to: 'years#y_1997'
  get '/1998', to: 'years#y_1998'
  get '/1999', to: 'years#y_1999'

  # login stuff

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#logging_in', as: 'logging_in'
  delete '/', to: 'sessions#log_out', as: "log_out"

  # users

  resources :users, only: [:create]
  get '/favorites', to: 'users#favorites', as: 'favorites'
  get '/create_account', to: 'users#create_account', as: 'create_account'

  # user favorites

  post '/favorites', to: 'user_favorites#add_to_favorites', as: 'add_to_favorites'
  delete '/user_favorite', to: 'user_favorites#remove_from_favorites', as: 'remove_from_favorites'
  

end
