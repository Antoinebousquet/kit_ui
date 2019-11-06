Rails.application.routes.draw do
  root to: 'events#index'

  devise_for :users

  resources :events, only: [:new, :create, :edit, :index, :show]
  resources :users, only:[:show, :edit, :update]
end
