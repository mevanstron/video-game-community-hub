class VideoGame < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :reviews
  has_many :users, through: :reviews
end
