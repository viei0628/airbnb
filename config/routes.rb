Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'listings#all'
  get 'all', to: 'listings#all'
end
