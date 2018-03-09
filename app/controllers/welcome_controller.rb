class WelcomeController < ApplicationController
  def home
    @most_reviewed_game = VideoGame.most_reviewed
  end
end
