class AddItemToPotlucks < ActiveRecord::Migration
  def change
  	add_column :potlucks, :item_id, :integer
  	add_index :potlucks, :item_id
  end
end
