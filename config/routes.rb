TeamManager::Engine.routes.draw do
  resources :teams do
    resources :players do
      resources :player_videos
    end
  end
end
