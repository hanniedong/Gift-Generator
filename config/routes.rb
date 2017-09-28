Rails.application.routes.draw do

  resources: :users, only: [:index, :new, :create, :show]
  resources: :gifts, only: [:index, :new, :create, :show]

  get '/login ' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#logout'

  root to: 'sessions#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
