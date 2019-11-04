Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  resources :attendances
  resources :events
  resources :users
end
