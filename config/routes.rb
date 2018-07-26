Rails.application.routes.draw do
  root 'lectures#index'
  resources :lectures do
    resources :user_voices
  end
end
