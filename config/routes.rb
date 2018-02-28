Rails.application.routes.draw do

  root 'welcome#home'

  resources :users
  resources :video_games
  resources :tags
  resources :reviews
end
