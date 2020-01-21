class CreateUserFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favorites do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :game_id
      t.integer :song_id
      t.timestamps
    end
  end
end
