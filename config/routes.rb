Rails.application.routes.draw do
  get 'welcome/index'
  resources :brandpros
  resources :brandproducts
  resources :products
  resources :brands
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  
end
