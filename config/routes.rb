Rails.application.routes.draw do

  get 'user-profile' => "users#user-profile"
  get 'users-admin' => "admins#users-admin"
  get 'products-admin' => "admins#products-admin"
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  get 'logout', to: "sessions#destroy"
  api_version(:module => "V1", :path => {:value => "v1"}) do
    resources :products
    resources :users
  end  
  
  resources :products
  resources :users
  resources :admins
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end