class FacebookUsersController < ApplicationController
  	def index
  	end

  	def list
   	if session[:user_id]
	      @user = User.find(session[:user_id])
	      @graph = Koala::Facebook::API.new(@user.oauth_token)
	      @friends = @graph.get_connections("me", "friends")
	      @people_list = Array.new

          @people_list = @graph.get_object('me?fields=id,name,friends.fields(id,email,name,picture)')['friends']['data']
  
	    	
	 	end
	 	render :json=>@people_list
  	end



end
