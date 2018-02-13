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
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
