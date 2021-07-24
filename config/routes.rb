Rails.application.routes.draw do
  root :to => "pages#home"
  resources :users
  resources :items


  #not crud #controller#action
  get '/login' => 'sessions#new'
  post '/login' => "sessions#create"
  delete '/login' => 'sessions#destroy'

end
