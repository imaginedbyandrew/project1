Rails.application.routes.draw do
  root :to => 'pages#home'
  post '/tvshows/:id/like' => 'tvshows#like', :as => 'like_tvshows' 
  resources :tvshows, :users


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

