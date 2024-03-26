Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: '/api/v1/auth'
  namespace :api do
    namespace :v1 do
      resources :rental_requests
      resources :users do
        member do
          put 'make_admin'
        end
        resources :favorites
      end
      resources :books
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
