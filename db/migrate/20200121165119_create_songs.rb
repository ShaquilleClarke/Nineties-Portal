class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :img_url
      t.integer :release_year
      t.string :external_link_1
      t.string :external_link_2
      t.timestamps
    end
  end
end
