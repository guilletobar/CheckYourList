Rails.application.routes.draw do
  resources :actividades
  resources :profesionales
  resources :clientes
  devise_for :users
  
  get 'welcome/index'
  
  root :to=> 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
