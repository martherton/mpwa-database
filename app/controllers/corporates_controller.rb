class CorporatesController < ApplicationController

	def index
		  if params[:search].present? and params[:search][:q].present? and Corporate.search(params[:search][:q]).present?
	        @corporates = Corporate.search(params[:search][:q])
	    elsif params[:search].present? 
	        flash.now[:error] = "No company with name #{params[:search][:q]}"
	        @corporates = Corporate.all
	    else 
			   @corporates = Corporate.all
			   @user = 0

	 end
	end   
 
	def new
		require_user
		@user = current_user
		@corporate = @user.corporates.new
	end
	
	def create
		require_user
		@user = current_user
		@corporate = @user.corporates.new(corporate_params)
		@corporate.save
		redirect_to corporates_path
	end

	def show
		@corporate = Corporate.find(params[:id])
	end	

	def edit
		require_user
		@user = current_user
		@corporate = @user.corporates.find(params[:id])
	end	

	def update
		require_user
		@user = current_user
		@corporate = @user.corporates.find(params[:id])

		if @corporate.update(corporate_params)
        flash[:success] = "Information was updated"
        redirect_to corporate_path(@corporate.id)
    else
      flash[:error] = "Oops. There has been a problem, please retry."
      render :edit
    end
  end  
    def destroy
    	require_user
    	@user = current_user
    	@corporate = @user.corporates.find(params[:id])
    	@openinfo.destroy
    	flash[:success] = "This information was deleted succesfully"
    redirect_to corporates_path
    end	

    private
    def corporate_params
    	params.require(:corporate).permit(:name, :country, :sector, :activity, :longitude, :latitude, :urlevernote, :Bloombergid, :address, :corpimage, :urlcompanywebsite, :urlgooglenews, :logoimage)
    end	
end
