class Resumeitem < ActiveRecord::Base
	belongs_to :user
	validates :sections, presence: true 
	validates :detail, presence: true
	validates :itemorder, presence: true, uniqueness: true
	

 

	
end
