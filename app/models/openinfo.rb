class Openinfo < ActiveRecord::Base
	validates :title, presence: true
	validates :Openinformation, presence: true
	belongs_to :user
end
