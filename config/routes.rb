Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, except: [:new]
  root to: 'sessions#new'
  post '/logout' => 'sessions#destroy'

  get 'secrets/new'
  get '/secret' => 'secrets#show'
end
