Rails.application.routes.draw do
  resources :physical_people
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :legal_people
  resources :clients
  resources :products
  resources :product_categories
end
