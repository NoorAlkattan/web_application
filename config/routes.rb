Rails.application.routes.draw do
  resources :vehicles
  resources :addresses
  resources :people
  	resources :profiles do
    member do
      post 'change_status'
    end
  end
  root "public#index"
  #match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  #match 'auth/failure', to: redirect('/'), via: [:get, :post]
  #match 'signout', to: 'sessions#logout', as: 'signout', via: [:get, :post]
  #devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", sessions: 'users/sessions'}
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
