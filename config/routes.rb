Rails.application.routes.draw do
  resources :transactions
  root 'vehicles#index'
  resources :vehicles do
    resources :fastags
  end
end
