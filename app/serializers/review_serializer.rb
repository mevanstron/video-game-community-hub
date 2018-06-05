class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :video_game_id, :title, :rating, :content
  belongs_to :video_game
  belongs_to :user
end
