TeamManager::Engine.routes.draw do
  resources :teams do
    resources :players do
      get '/media', to: 'players#media'
      resources :player_videos
      resources :player_photos
    end
  end
end
