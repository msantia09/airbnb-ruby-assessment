class CreateProperties < ActiveRecord::Migration
	def change
		create_table :properties do |t|
			t.string :title
			t.string :prop_type
			t.string :room_type
			t.integer :no_bed
			t.integer :no_guest
			t.integer :price
	    	t.integer :user_id
	    	t.timestamps null: false
	    end
    end
end