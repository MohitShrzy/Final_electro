Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/checkout'
  post 'gallery/checkout'
  get 'gallery/search'
  get 'gallery/purchase_complete'
  resources :stores
  root "gallery#index"
  devise_for :users
  get 'admin/login'
  
  post 'admin/login'
  get 'admin/logout'
  get 'admin/yourpage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


