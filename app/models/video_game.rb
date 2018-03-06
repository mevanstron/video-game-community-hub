class VideoGame < ApplicationRecord
  has_many :video_game_tags
  has_many :tags, through: :video_game_tags
  has_many :reviews
  has_many :users, through: :reviews
  has_many :user_video_games
  has_many :users, through: :user_video_games

  validates :title, presence: true
  validates :title, uniqueness: true

  accepts_nested_attributes_for :tags

  def tags_attributes=(tags_attributes)
    tags_attributes.values.each do |tag_attribute|
      tag = Tag.find_or_create_by(tag_attribute)
      self.tags << tag unless self.tags.include?(tag) || tag.name == ""
    end
  end


  def self.most_reviewed
    VideoGame.joins(:reviews).group(:id).order("COUNT(reviews.id) DESC").limit(1).first
  end
end
