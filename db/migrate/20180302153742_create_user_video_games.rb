class CreateUserVideoGames < ActiveRecord::Migration[5.1]
  def change
    create_table :user_video_games do |t|
      t.integer :user_id
      t.integer :video_game_id

      t.timestamps
    end
  end
end
