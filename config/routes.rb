Rails.application.routes.draw do

  root 'welcome#home'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :video_games
  resources :tags
  resources :reviews
end
