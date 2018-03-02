class VideoGame < ApplicationRecord
  has_many :tags
  has_many :reviews
  has_many :users, through: :reviews
  has_many :user_video_games
  has_many :users, through: :user_video_games
end
