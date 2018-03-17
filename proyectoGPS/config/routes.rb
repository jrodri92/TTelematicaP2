Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    resources :positions, only: [:create]
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 # root 'index#index'
 # scope '/proyectoGPS' do
 #   get 'index/index'
 #   resources :positions
 #   root 'index#index'
 # end

 #  get '/positions' => 'positions#new'
 #  get '/map' => 'positions#show'

 #  post '/positions' => 'positions#create'
	
 scope '/proyectoGPS' do
    get '/positions' => 'positions#new'
    get '/map' => 'positions#show'
    post '/positions' => 'positions#create'
    resources :positions
    root 'index#index'
  end

end