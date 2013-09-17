class MainController < ApplicationController
  def index
  	if session[:user_id]
  		redirect_to action:'kindles'
  		return false
  	end

  end
  def kindles
  	@kindles = User.find(session[:user_id]).krindles
  end

  def krindle
    if request.post?
     @krindle =  Krindle.find(params[:krindle_id])
     @krindle.users = params[:users]
     @krindle.save
    else
      if params[:krindle_id].nil?
        render :json=>[]
      else
        @people_list = Krindle.find(params[:krindle_id]).users
        render :json=>@people_list
      end
    end

  end
end
