class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :video_game
end
