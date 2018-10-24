class ModifyUsersCategories < ActiveRecord::Migration[5.1]
  def change
    drop_table :users_categories 
    create_table :categories_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
    end
  end
end
