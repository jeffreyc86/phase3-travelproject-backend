class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.integer :city_id
      t.integer :user_id
      t.string :title
      t.string :category
      t.string :video_url
      t.integer :likes

      t.timestamps
    end
  end
end
