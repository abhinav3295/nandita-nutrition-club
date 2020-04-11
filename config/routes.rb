Rails.application.routes.draw do
  resources :member_visits
  resources :customer_leads
  resources :stocks
  resources :products
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
