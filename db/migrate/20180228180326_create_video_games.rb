class CreateVideoGames < ActiveRecord::Migration[5.1]
  def change
    create_table :video_games do |t|
      t.string :title
      t.integer :release_year
      t.string :console
      t.integer :user_id

      t.timestamps
    end
  end
end
