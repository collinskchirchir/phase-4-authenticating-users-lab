Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  post '/login', to: 'sessions#create'

  #stay loggged in
  get 'me', to: 'users#show'
  
end
