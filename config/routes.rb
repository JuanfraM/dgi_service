Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'api/dgi#status'

  namespace :api, defaults: { format: :json }  do
    resources :users do
      collection do
        get 'Select_for_use', to: :Select_for_use
      end
    end
  end
end
