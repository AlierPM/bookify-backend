Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      # get 'user_id' => 'get_tokens#show_user_id'
      # get 'csrf_tokens' => 'get_tokens#show_csrf_token'
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
