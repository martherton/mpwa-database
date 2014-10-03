class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
	helper_method :require_user
	helper_method :current_user?
	helper_method :current_viewer
	helper_method :require_viewer
	helper_method :current_viewer?

	def current_user
		if session[:user_id].present?
			User.find(session[:user_id])
		end	
	end	
	def current_user?
		current_user.present?
	end	
	def require_user
		if current_user?
			current_user
		else
			flash[:error] = "You must be logged in for this action."
			redirect_to new_session_path
		end		
	end	

	def current_viewer
		if session[:viewer_id].present?
			Viewer.find(session[:viewer_id])
		end	
	end	
	def current_viewer?
		current_viewer.present?
	end	
	def require_viewer
		if current_viewer?
			current_viewer
		else
			flash[:error] = "You must be logged in for this action."
			redirect_to new_viewersession_path
		end		
	end	
end
