class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :Title
      t.integer :Rating
      t.text :Content
      t.integer :user_id
      t.integer :video_game_id

      t.timestamps
    end
  end
end
