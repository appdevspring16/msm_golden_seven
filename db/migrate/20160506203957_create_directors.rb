class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.text :bio
      t.string :dob
      t.string :imagine_url

      t.timestamps null: false
    end
  end
end
