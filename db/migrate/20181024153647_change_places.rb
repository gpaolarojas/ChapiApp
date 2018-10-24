class ChangePlaces < ActiveRecord::Migration[5.1]
  def change
    drop_table :places
  
    create_table :places do |t|
      t.integer :latitude
      t.integer :longitude
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
