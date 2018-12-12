Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  devise_for :users
  root 'lectures#search'
  get 'search', to: 'lectures#index'
  resources :users
  resources :lectures do
    resources :user_voices
  end  
end
