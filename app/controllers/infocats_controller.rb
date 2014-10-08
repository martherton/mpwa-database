class InfocatsController < ApplicationController
	def index
	  if current_viewer?
	   @infocats = Infocat.all.order('itemorder')
	   @viewer = current_viewer
	   elsif current_user?
	   @infocats = Infocat.all.order('itemorder')
	   @user = current_user
	   else
	   redirect_to root
	 end
	end   
 
	def new
		require_user
		@user = current_user
		@infocat = @user.infocats.new
	end
	
	def create
		require_user
		@user = current_user
		@infocat = @user.infocats.new(infocat_params)
		@infocat.save
		redirect_to infocats_path
	end

	def show
		@infocat = Infocat.find(params[:id])
	end	

	def edit
		require_user
		@user = current_user
		@infocat = @user.infocats.find(params[:id])
	end	

	def update
		require_user
		@user = current_user
		@infocat = @user.infocats.find(params[:id])

		if @infocat.update(infocat_params)
        flash[:success] = "Information was updated"
        redirect_to infocat_path(@infocat.id)
    else
      flash[:error] = "Oops. There has been a problem, please retry."
      render :edit
    end
  end  


    def destroy
    	require_user
    	@user = current_user
    	@infocat = @user.infocats.find(params[:id])
    	@infocat.destroy
    	flash[:success] = "This information was deleted succesfully"
    redirect_to infocats_path
    end	

    private

    def infocat_params
    	params.require(:infocat).permit(:title, :brief_description, :user_id, :itemorder, :routing)
    end	
end
