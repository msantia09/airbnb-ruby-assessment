
# disp form to create new user
get '/users/new' do
end

# disp form to view all users
get '/users' do
end

# disp form to view specific user
get '/users/:user_id' do

end

# edit specific user
get '/users/:user_id:/edit' do

end

# create user
post '/users' do
	puts "[LOG] Posting /users"
	@user = User.new(params[:user])
	@user.save
	@flash = 'Account successfully created. Please login with your username/password.'
	erb :"sessions/main"
end

# update specific user
put '/users/:user_id' do
end

# update specific user
patch '/users/:user_id' do
end

# delete specific user
delete '/users/:user_id' do
end
