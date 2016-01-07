class User < ActiveRecord::Base

	has_many :properties
	has_many :bookings
	has_many :comments

	attr_accessor :password
	
	before_create :encrypt
	# validates :firstname, presence: true
	# validates :lastname, presence: true
	# validates :email, presence: true
	# validates :encrypted_password, presence: true
	# # validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ },
					  # :length => {:minimum => 6},
					  # :uniqueness => true

	def encrypt
		self.encrypted_password = BCrypt::Password.create(self.password)
	end

	def authenticate(password)
		BCrypt::Password.new(self.encrypted_password) == password
	end

end