Rails.application.routes.draw do
  root 'lectures#search'
  get 'search', to: 'lectures#index'
  resources :lectures do
    resources :user_voices
  end  
end
