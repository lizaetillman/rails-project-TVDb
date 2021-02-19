class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :writer
      t.integer :year_released
      t.integer :num_of_seasons
      t.text :description
      t.string :genre

      t.timestamps
    end
  end
end
