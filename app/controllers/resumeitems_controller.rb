class ResumeitemsController < ApplicationController
	def index
		if current_viewer?
		@resumeitemskey = Resumeitem.where(:sections => "Key").order("itemorder")
		@resumeitemsexp = Resumeitem.where(:sections => "Experience").order("itemorder")
		@resumeitemsedu = Resumeitem.where(:sections => "Education").order("itemorder")
		@resumeitemsoth = Resumeitem.where(:sections => "Other").order("itemorder")
		@viewer = current_viewer
	elsif current_user?
		@resumeitemskey = Resumeitem.where(:sections => "Key").order("itemorder")
		@resumeitemsexp = Resumeitem.where(:sections => "Experience").order("itemorder")
		@resumeitemsedu = Resumeitem.where(:sections => "Education").order("itemorder")
		@resumeitemsoth = Resumeitem.where(:sections => "Other").order("itemorder")
		@user = current_user
	else
	redirect to root_path	
	end
 
	   
	end	

	def new
		require_user
		@user = current_user
		@resumeitem = @user.resumeitems.new
		
	end
	
	def create
		require_user
		@user = current_user
		@resumeitem = @user.resumeitems.new(resumeitem_params)
  	if @resumeitem.save
        flash[:success] = "Thanks for submitting"
        redirect_to root_path
    else
      flash[:error] = "Oops, try again."
  	 render :new
    end

	end

	def edit
		require_user
		@user = current_user
		@resumeitem = @user.resumeitems.find(params[:id])
	end	

	def update
		require_user
		@user = current_user
		@resumeitem = @user.resumeitems.find(params[:id])

		if @resumeitem.update(resumeitem_params)
        flash[:success] = "Information was updated"
        redirect_to resumeitems_path
    else
      flash[:error] = "Oops. There has been a problem, please retry."
      render :edit
    end
	end
		
	def destroy
		require_user
    	@user = current_user
    	@resumeitem = @user.resumeitems.find(params[:id])
    	@openinfo.destroy
    	flash[:success] = "This information was deleted succesfully"
    redirect_to resumeitems_path
	end	

	def show
		@resumeitem = Resumeitem.find(params[:id])
		@key = "Key"
		
	end	

private

	def resumeitem_params
		params.require(:resumeitem).permit(:sections, :organisation, :title_course, :location, :start_date, :end_date, :detail, :detail1, :detail2, :detail3, :detail4, :detail5, :detail6, :extradetail, :user_id, :itemorder, :Moreinformation)
	end


end
