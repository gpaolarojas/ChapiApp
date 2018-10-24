class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.integer :charge
      t.references :place, foreign_key: true

      t.timestamps
    end

    create_table :events_categories, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :category, index: true
    end
  end
end
