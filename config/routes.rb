Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  get 'applicants/new'
  post 'applicants/create'

  # 修改以下的内容
  resources :rooms do
    resources :messages
  end
  
  root to: "sessions#new"
end
