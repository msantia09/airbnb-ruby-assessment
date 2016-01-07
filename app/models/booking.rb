class Booking < ActiveRecord::Base

	belongs_to :user
	belongs_to :property

	# validates :book_start, presence: true
	# validates :book_end, presence: true

end