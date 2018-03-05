Rails.application.routes.draw do

  root 'welcome#home'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :video_games do
    resources :tags
  end
  resources :user_video_games, only: [:create, :destroy]
  resources :tags
  resources :reviews
end
