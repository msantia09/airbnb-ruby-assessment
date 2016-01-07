class Property < ActiveRecord::Base

	belongs_to :user
	has_many :bookings
	has_many :comments

	validates :prop_type, presence: true
	validates :room_type, presence: true
	validates :price, presence: true
	validates :no_bed, presence: true
	validates :no_guest, presence: true

end