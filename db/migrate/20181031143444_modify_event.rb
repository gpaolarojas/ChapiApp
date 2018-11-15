class CreateTables < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :date, :datetime
    add_column:   :events,  :description_event, :string
    add_column:   :events,  :image, :string 
    
  end
end
