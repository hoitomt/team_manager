TeamManager::Engine.routes.draw do
  devise_for :users, class_name: "TeamManager::User", module: :devise
  resources :teams do
    get '/schedule', to: 'teams#schedule', as: 'schedule'

    resources :players do
      get '/media', to: 'players#media'
      resources :player_videos
      resources :player_photos
    end
  end
end
