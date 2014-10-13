class SessionsController < ApplicationController
	def new

  end

  def create
  	@username = params[:session][:username]
  	@password = params[:session][:password]
  	@user = User.find_by(username: @username)

  	if @user.present? and @user.authenticate(@password)  #the bcrypt check that the password is correct
  		session[:user_id] = @user.id 
  		redirect_to infocats_path

  	else
  		flash[:error] = "please try again!"
  		render :new
  	end	
  		
  end	
  	def destroy
  		reset_session
  		flash[:success] = "logged out"
  		redirect_to root_path
  	end	
end
