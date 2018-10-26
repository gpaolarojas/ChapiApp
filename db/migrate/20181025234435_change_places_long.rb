class ChangePlacesLong < ActiveRecord::Migration[5.1]
  def change
    drop_table :events
    drop_table :places

    create_table :places do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.text :address

      t.timestamps
    end

    create_table :events do |t|
      t.string :name
      t.date :date
      t.integer :charge
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
