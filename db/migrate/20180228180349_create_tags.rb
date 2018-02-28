class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :video_game_id

      t.timestamps
    end
  end
end
