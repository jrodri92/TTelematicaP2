Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    resources :positions, only: [:create]
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#index'

  get '/positions' => 'positions#new'
  get '/map' => 'positions#show'

  post '/positions' => 'positions#create'

end
