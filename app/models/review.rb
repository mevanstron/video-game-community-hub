class Review < ApplicationRecord
  belongs_to :user
  belongs_to :video_game

  validates :title, presence: true
  validates :rating, presence: true
  validates :content, presence: true
end
