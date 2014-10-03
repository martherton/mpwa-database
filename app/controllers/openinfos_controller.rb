class OpeninfosController < ApplicationController
	def index
	   @openinfos = Openinfo.all
	end   

end
