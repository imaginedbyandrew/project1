Rails.application.routes.draw do
  root :to => 'tvshows#index'
  resources :tvshows, :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

