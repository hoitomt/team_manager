TeamManager::Engine.routes.draw do
  devise_for :users, class_name: "TeamManager::User", module: :devise
  namespace :site do
    resources :site_photos
  end

  resources :teams do
    resources :events
    get '/schedule', to: 'teams#schedule', as: 'schedule'

    resources :players do
      get 'media', to: 'players#media'
      resources :player_videos
      resources :player_photos
    end
  end

  resources :players, only: [:index] do
    patch 'activate', to: 'players#activate'
    patch 'deactivate', to: 'players#deactivate'
  end
end
