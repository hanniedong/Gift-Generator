Rails.application.routes.draw do

  resources :users, only: [:index, :new, :create, :show]
  resources :index, only: [:index]
  resources :receivers do 
    resources :gifts 
  end 

  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#logout'


  root to: 'index#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
