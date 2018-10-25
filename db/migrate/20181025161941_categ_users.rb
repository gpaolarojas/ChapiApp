class CategUsers < ActiveRecord::Migration[5.1]
  def change
    
    drop_table :events_categories 
    create_table :categories_events, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :category, index: true
    end
  end
end
