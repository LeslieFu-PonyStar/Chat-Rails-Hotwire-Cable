Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  get 'applicants/new'
  post 'applicants/create'
  
  get 'sessions', to: 'rooms#index'
  # 修改以下的内容
  resources :rooms do
    resources :messages
  end
  resources :sessions
  root to: "sessions#new"
end
