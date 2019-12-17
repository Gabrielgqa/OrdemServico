Rails.application.routes.draw do
  resources :home, only: :index
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :physical_people
  resources :legal_people
  resources :clients
  resources :products
  resources :product_categories
end
