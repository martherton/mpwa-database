class ResumeitemsController < ApplicationController
	def index
		if current_viewer?
		@resumeitemskey = Resumeitem.where(:sections => "Key")
		@resumeitemsexp = Resumeitem.where(:sections => "Experience")
		@resumeitemsedu = Resumeitem.where(:sections => "Education")
		@resumeitemsoth = Resumeitem.where(:sections => "Other")
		@viewer = current_viewer
	elsif current_user?
		@resumeitemskey = Resumeitem.where(:sections => "Key")
		@resumeitemsexp = Resumeitem.where(:sections => "Experience")
		@resumeitemsedu = Resumeitem.where(:sections => "Education")
		@resumeitemsoth = Resumeitem.where(:sections => "Other")
		@user = current_user
	else
	redirect to root_path	
	end

	   
	end	

	def new

	end
	
	def create

	end

	def destroy

	end	
end
