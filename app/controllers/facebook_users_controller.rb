class FacebookUsersController < ApplicationController
	skip_before_filter :verify_authenticity_token
  	def index
  	end

  	def list
   	if session[:user_id]
	      @user = User.find(session[:user_id])
	      @graph = Koala::Facebook::API.new(@user.oauth_token)
	      @friends = @graph.get_connections("me", "friends")
	      @people_list = Array.new
        @temp_list = Array.new
        @temp_list = @graph.get_object('me?fields=id,name,friends.fields(id,email,name,picture)')['friends']['data']
        @temp_list.each do |tp|
          @people_list << {'name'=>tp['name'], 'picture'=>tp['picture']['data']['url']}
	    	end
	 	end
	 	render :json=>@people_list
  	end

  def krindle
    @people_list=[]
    @people_list = Krindle.find(params['krindle_id']).users
    render :json=>@people_list
  end

  def krindle_save
    @krindle=Krindle.find(params['krindle_id'])
    added_users = params['krindle']
    @krindle.users = []
    added_users.each do |user|

      
    	@krindle.users<<User.find_or_create_by_id(:name=>user['name'], :id=>user['id'], :picture=>user['picture'])
    end
    test = @krindle.save
    puts "test= "+test.to_s
    render :json=>@krindle
  end

end
