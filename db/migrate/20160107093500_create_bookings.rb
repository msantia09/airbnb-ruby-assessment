class CreateBookings < ActiveRecord::Migration
	def change
		create_table :bookings do |t|
			t.date :book_start
			t.date :book_end
			t.boolean :book_status
	    	t.integer :user_id
	    	t.integer :prop_id
	    	t.timestamps null: false
	    end
    end
end