Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'api/api#status'

  namespace :api, defaults: { format: :json }  do
    namespace :dgi , defaults: { format: :json }  do
      resources :users do
        collection do
          get 'user-data', to: :user_data
        end
      end
    end
    namespace :bps , defaults: { format: :json }  do
      resources :bps_users do
        collection do
          get 'user-info', to: :user_info
        end
      end
      resources :bps_aportes do
        collection do
          get 'user-aporte', to: :user_aporte
        end
      end
    end
  end
end
