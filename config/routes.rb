Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'listings#all'
  resources :castles, only: [:index, :create, :show, :edit, :new, :update, :destroy] do
    resources :reviews, only: [ :new, :create, :update, :destroy]
  end
  resources :listings
end
