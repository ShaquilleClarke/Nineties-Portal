Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'

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

end
