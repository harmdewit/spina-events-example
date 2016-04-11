Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    resources :events, except: [:show]
  end
end
