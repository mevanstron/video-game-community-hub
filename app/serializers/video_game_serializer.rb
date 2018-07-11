class VideoGameSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :console, :users
  has_many :tags
end
