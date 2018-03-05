class VideoGameTag < ApplicationRecord
  belongs_to :video_game
  belongs_to :tag
end
