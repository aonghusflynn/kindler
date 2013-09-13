class FacebookUsersController < ApplicationController
  	def index
  	end

  	def list
   	if session[:user_id]
	      @user = User.find(session[:user_id])
	      @graph = Koala::Facebook::API.new(@user.oauth_token)
	      @friends = @graph.get_connections("me", "friends")
	      @people_list = Array.new
      		#for friend in @friends
	        	h = Hash.new
	        	h = @graph.get_object('me?fields=id,name,friends.fields(id,email,name,picture)')

	        	#h["photo"] = @graph.get_object(friend['id']+'?fields=picture,name')['picture']['data']['url']
	        	#h["id"] = friend["id"]
	        	#h["name"] = @graph.get_object(friend['id']+'?fields=name')["name"]
	        	#h["likes"] = @graph.get_object(friend['id']+'?fields=likes')["data"]
	        	@people_list << h
	    	#end
	 	end
	 	render :json=>@people_list
  	end


end
