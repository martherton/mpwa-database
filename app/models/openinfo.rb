class Openinfo < ActiveRecord::Base
	validates :title, presence: true
	validates :Openinformation, presence: true
	validates :itemorder, presence: true, uniqueness: true
	belongs_to :user
end
