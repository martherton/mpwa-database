class OpeninfosController < ApplicationController
	def index
	  
	   @openinfos = Openinfo.all
	   @user = 0
	end   

	def new
		require_user
		@user = current_user
		@openinfo = @user.openinfos.new
	end
	
	def create
		require_user
		@user = current_user
		@openinfo = @user.openinfos.new(openinfo_params)
		@openinfo.save
		redirect_to root_path
	end

	def show
		@openinfo = Openinfo.find(params[:id])
	end	

	def edit
		require_user
		@user = current_user
		@openinfo = @user.openinfo.find(params[:id])
	end	

	def update
		require_user
		@user = current_user
		@openinfo = @user.openinfo.find(params[:id])

		if @openinfo.update(openinfo_params)
        flash[:success] = "Information was updated"
        redirect_to openinfo_path(@openinfo.id)
    else
      flash[:error] = "Oops. There has been a problem, please retry."
      render :edit
    end
  end  
    def destroy
    	require_user
    	@user = current_user
    	@openinfo = @user.openinfo.find(params[:id])
    	@openinfo.destroy
    	flash[:success] = "This information was deleted succesfully"
    redirect_to root_path
    end	

    private
    def openinfo_params
    	params.require(:openinfo).permit(:title, :Openinformation, :user_id)
    end	

end
