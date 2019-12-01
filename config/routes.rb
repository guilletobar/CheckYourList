Rails.application.routes.draw do
  resources :clients
  resources :actividades
  resources :profesionales
  resources :clientes
  # resources :users
  devise_for :users

  namespace :charts do
      get "new_users"
      get "new_clients"
      get "count_clientes"
  end
  
  get 'welcome/index'
  
  root :to=> 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
