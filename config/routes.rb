Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :games
  end
    end
  end

  get '/api/v1/sessions/login', to: 'sessions#new', as: 'login'

  post 'api/v1/sessions/login', to: 'sessions#create', as: 'sessions'

  delete "api/v1/sessions/login", to: "sessions#destroy"

end
