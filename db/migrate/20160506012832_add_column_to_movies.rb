class AddColumnToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director_id, :string
  end
end
