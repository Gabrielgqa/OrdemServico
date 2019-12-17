Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :products
  resources :product_categories
end
