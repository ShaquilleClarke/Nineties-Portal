class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.string :platform
      t.string :publisher
      t.string :img_url
      t.integer :release_year
      t.string :external_link_1
      t.string :external_link_2
      t.timestamps
    end
  end
end
