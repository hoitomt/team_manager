TeamManager::Engine.routes.draw do
  resources :teams do
    resources :players
  end
end
