class ViewersController < ApplicationController
		def new
  	require_user
  	@viewer = Viewer.new
  end

  def create
  	require_user
  	@viewer = Viewer.new(user_params)
  	if @viewer.save
        flash[:success] = "New Viewer created."
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
