class VideoGame < ApplicationRecord
  has_many :video_game_tags
  has_many :tags, through: :video_game_tags
  has_many :reviews
  has_many :users, through: :reviews
  has_many :user_video_games
  has_many :users, through: :user_video_games

  validates :title, presence: true
  validates :title, uniqueness: true
end
