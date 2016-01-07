
# create new property
get '/properties/new' do
	erb :"properties/new"
end

get '/properties/index' do
	@user = User.find_by_id(session[:user_id])
	@all_properties = Property.all
	erb :"properties/index"
end

# view all properties
get '/properties' do
end

# view specific property
get '/properties/:property_id' do
	@property = Property.find(params[:property_id])
	erb :"properties/show"
end

get '/properties/:property_id/show' do
	@property = Property.find(params[:property_id])
end

# edit specific property
get '/properties/:property_id/edit' do
	@property = Property.find(params[:property_id])
	erb :"properties/edit"
end


# create property
post '/properties' do
	puts "[LOG] Posting /properties"	
	@user = User.find_by_id(session[:user_id])
	@property = @user.properties.new(params[:property])
	
	if @property.save
		# @flash = "Property #{@property.title} has been created."
		redirect "/properties/index"
	else
		@flash = "There was some error in your entry. Please try again."
		erb :"properties/new"
	end
end

post '/properties/:property_id/pre-edit' do
	@property = Property.find(params[:property_id])
	erb :"properties/edit"
end

# update specific property
post '/properties/:property_id/edit' do
	@property = Property.find(params[:property_id])
	@property.update(params[:property])
	redirect "/properties/index"
end

# update specific property
patch '/properties/:property_id' do
end

# delete specific property
post '/properties/:property_id' do
	@property = Property.find(params[:property_id])
	@property.delete
	erb :"/properties/index"
end
