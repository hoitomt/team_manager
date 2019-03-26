TeamManager::Engine.routes.draw do
  devise_for :users, class_name: "TeamManager::User", module: :devise
  resources :teams do
    resources :players do
      get '/media', to: 'players#media'
      resources :player_videos
      resources :player_photos
    end
  end
end
