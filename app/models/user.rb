class User < ApplicationRecord
  has_many :video_games
  has_many :reviews

  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password, presence: true
  validates :password, confirmation: true

  validates :password_confirmation, presence: trues
end
