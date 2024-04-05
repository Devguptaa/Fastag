Rails.application.routes.draw do
  get 'sessions/destroy'
  get 'punishment/index1'
  get 'punishment/index2'
  get 'punishment/index3'
  get 'punishment/index4'
  get 'punishment/index5'
  get 'punishment/index6'
  get 'punishment/index7'
  get 'punishment/index8'
  get 'punishment/index9'
  get 'punishment/index10'

  root 'vehicles#index'
  resources :vehicles do
    resources :fastags do
      resources :transactions do
        get 'filter_by_date_range', on: :collection
      end
    end
  end
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token



end
