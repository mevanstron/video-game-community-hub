class CreateVideoGameTags < ActiveRecord::Migration[5.1]
  def change
    create_table :video_game_tags do |t|
      t.integer :video_game_id
      t.integer :tag_id
    end
  end
end
