Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: '/api/v1/auth'
  namespace :api do
    namespace :v1 do
      resources :rental_requests
      resources :users do
      resources :favorites
      end
      resources :books
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
