class CreatePotlucks < ActiveRecord::Migration
	def up
		create_table :potlucks do |t|
			t.string :name
			t.datetime :date
			t.integer :item_id

			t.timestamps
		end

		add_index :potlucks, :item_id
	end

  	def down
  		drop_table :potlucks
 	end
end
