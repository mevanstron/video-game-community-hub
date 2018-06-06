class UserVideoGamesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :video_game_id
end
