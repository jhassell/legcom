Rails.application.routes.draw do
  namespace :admin do
      resources :users
      root to: "users#index"
    end
  root to: 'visitors#index'
  devise_for :users
  resources :assignments
  resources :committees
  resources :members
  resources :users

  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
end
