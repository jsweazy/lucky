class AddTypeToItems < ActiveRecord::Migration
  def change
    add_column :items, :type_id, :integer
    add_index :items, :type_id
  end
end
