class ViewersController < ApplicationController
		def new
  	require_user
  	@viewer = Viewer.new
  end

  def create
  	require_user
  	@viewer = Viewer.new(user_params)
  	if @viewer.save
        flash[:success] = "Thanks for signing up! Now please log in."
        redirect_to root_path
    else
      flash[:error] = "Oops, try again."
  	 render :new
    end
  end

	private

	def user_params
		params.require(:viewer).permit(:username, :email, :password, :password_confirmation)
	end
end
