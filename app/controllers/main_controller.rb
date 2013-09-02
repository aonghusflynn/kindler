class MainController < ApplicationController
  def index
  	if session[:user_id]
  		@user = User.find(session[:user_id])
  		@graph = Koala::Facebook::API.new(@user.oauth_token)
  		@friends = @graph.get_connections("me", "friends")
  	end


  end
end
