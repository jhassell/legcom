Rails.application.routes.draw do
  resources :committee_offices
  namespace :admin do
      resources :users
      root to: "users#index"
    end
  root to: 'visitors#index'
  devise_for :users
  resources :assignments
  resources :committees
  resources :committee_offices
  resources :members
  resources :users

  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
end
