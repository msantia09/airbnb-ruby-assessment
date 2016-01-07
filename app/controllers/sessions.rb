get '/' do
  erb :"sessions/main"
end

# disp form to create new session
get '/sessions/new' do
end

# disp form to view all sessions
get '/sessions' do
end

# disp form to view specific session
get '/sessions/:session_id' do

end

# edit specific session
get '/sessions/:session_id:/edit' do

end

# create session
post '/sessions' do
	puts "[LOG] Posting /sessions"
	@user = User.find_by_email(params[:user][:email])
	if @user.authenticate(params[:user][:password])
		session['user_id'] = @user.id
		redirect "/properties/index"
	else
		@flash = "Login failed. Please try again with the correct username/password."
		erb :"/sessions/main"
	end
end

# update specific session
put '/sessions/:session_id' do
end

# update specific session
patch '/sessions/:session_id' do
end

# delete specific session
post '/sessions/:session_id' do
	puts "[LOG] Deleting"
	session['user_id'] = ""
	@flash = 'Successfully logged out.'
	erb :"sessions/main"
end
