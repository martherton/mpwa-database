class DownloadsController < ApplicationController
	def index
	  if current_viewer?
	   @downloads = Download.all.order('itemorder')
	   @viewer = current_viewer
	   
	   elsif current_user?
	   @downloads = Download.all.order('itemorder')
	   @user = current_user
	   
	   else
	   redirect_to root
	 end
	end   
 
	def new
		require_user
		@user = current_user
		@download = @user.downloads.new
	end
	
	def create
		require_user
		@user = current_user
		@download = @user.downloads.new(download_params)
		@download.save
		redirect_to downloads_path
	end

	def show
		@download = Download.find(params[:id])
		@downloadpath = @download.docupload.path
		@downloadurl = @downloadpath.insert(0, "https://s3.amazonaws.com/m356p748w857a")
		data = open(@downloadurl)
		send_data data.read, filename: @download.docupload_file_name, disposition: 'inline', stream: 'true', buffer_size: '4096'
		#send_file(@downloadurl)
		
	end	

	def edit
		require_user
		@user = current_user
		@download = @user.downloads.find(params[:id])
	end	

	def update
		require_user
		@user = current_user
		@download = @user.downloads.find(params[:id])

		if @download.update(download_params)
        flash[:success] = "Information was updated"
        redirect_to download_path(@download.id)
    else
      flash[:error] = "Oops. There has been a problem, please retry."
      render :edit
    end
  end  


    def destroy
    	require_user
    	@user = current_user
    	@download = @user.downloads.find(params[:id])
    	@download.destroy
    	flash[:success] = "This information was deleted succesfully"
    redirect_to downloads_path
    end	

    private

    def download_params
    	params.require(:download).permit(:title, :description, :user_id, :itemorder, :routing, :docupload)
    end	
end
