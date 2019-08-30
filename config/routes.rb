Rails.application.routes.draw do
  root to: 'customers#index'
  resources :customers, only: [:index, :edit, :update]
  post 'change/:id', to: "customers#change", as: 'customer_change'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
