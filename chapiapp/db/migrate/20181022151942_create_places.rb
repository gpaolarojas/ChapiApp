class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.integer :lattitude
      t.integer :longitude
      t.string :name
      t.text :direction

      t.timestamps
    end
  end
end
