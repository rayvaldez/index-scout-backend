Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :show] do
        resources :reports
        resources :badges, only: [:index, :show, :update]
      end
    end
  end
  
end
