class User < ApplicationRecord
  has_many :user_video_games
  has_many :video_games, through: :user_video_games
  has_many :reviews

  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password, presence: true, if: :password_required?
  validates :password, confirmation: true, if: :password_required?

  validates :password_confirmation, presence: true, if: :password_required?

  protected

  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end
end
