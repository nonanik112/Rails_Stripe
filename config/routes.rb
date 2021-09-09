Rails.application.routes.draw do
  root 'prducts#index'
  resources :products
  resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
