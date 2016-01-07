
# create new booking
get '/properties/:property_id/bookings/new' do
	@user = User.find_by_id(session[:user_id])
	@property = @user.properties.find_by_id(:property_id)
	erb :"bookings/new"
end

# view all bookings
get '/bookings' do
end

# view specific booking
get '/bookings/:booking_id' do
end

# edit specific booking
get '/bookings/:booking_id/edit' do
end

# create booking
post '/properties/:property_id/bookings' do
	
	@property = Property.find_by_id(:property_id)
	@booking = @property.bookings.new(params[:booking])
	@booking.save
end

# update specific booking
put '/bookings/:booking_id' do
end

# update specific booking
patch '/bookings/:booking_id' do
end

# delete specific booking
delete '/bookings/:booking_id' do
end
