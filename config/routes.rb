Rails.application.routes.draw do
    root :to => 'users#index'
  resources :tvshows, :users
end