class ViewersessionsController < ApplicationController
	def new

  end

  def create
  	@username = params[:viewersession][:username]
  	@password = params[:viewersession][:password]
  	@viewer = Viewer.find_by(username: @username)

  	if @viewer.present? and @viewer.authenticate(@password)  #the bcrypt check that the password is correct
  		session[:viewer_id] = @viewer.id 
  		redirect_to infocats_path

  	else
  		flash[:error] = "Information not recognised!  Try Again"
  		render :new
  	end	
  		
  end	
  	def destroy
  		reset_session
  		flash[:success] = "You are now logged out."
  		redirect_to root_path
  	end	
end
