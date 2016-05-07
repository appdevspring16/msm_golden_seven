class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :year
      t.string :duration
      t.string :image_url
      t.string :description
      t.string :director_id

      t.timestamps null: false
    end
  end
end
