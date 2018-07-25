Rails.application.routes.draw do
  resources :lectures
  root 'lectures#search'
  get 'search', to: 'lectures#index'
end
