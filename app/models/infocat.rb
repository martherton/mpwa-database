class Infocat < ActiveRecord::Base
	validates :title, presence: true
	validates :brief_description, presence: true
	validates :itemorder, presence: true, uniqueness: true
	validates :routing, presence: true
	belongs_to :user
end
