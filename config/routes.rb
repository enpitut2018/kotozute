Rails.application.routes.draw do
  resources :lectures
  root 'lectures#index'
end
