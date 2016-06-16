Rails.application.routes.draw do
  resources :bids, only: [:index, :create]
  root "bids#index"
end
