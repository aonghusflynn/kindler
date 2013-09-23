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


end
