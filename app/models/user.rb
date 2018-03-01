class User < ApplicationRecord
  has_many :video_games
  has_many :reviews

  has_secure_password
end
