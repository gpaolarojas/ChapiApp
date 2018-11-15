class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.float :latitude, precision: 10, scale: 6
      t.float :longitude, precision: 10, scale: 6
      t.string :name
      t.text :address

      t.timestamps
    end
    create_table :categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phoneNumber

      t.timestamps
    end

    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :charge
      t.string :description_event
      t.string :image
      t.references :place, foreign_key: true

      t.timestamps
    end

    create_table :categories_events, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :category, index: true
    end

    create_table :categories_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
    end

  end
end
