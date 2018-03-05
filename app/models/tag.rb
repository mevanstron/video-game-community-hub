class Tag < ApplicationRecord
  has_many :video_game_tags
  has_many :video_games, through: :video_game_tags
end
