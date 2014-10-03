class Openinfo < ActiveRecord::Base
	validates :title, presence: true
	validates :Openinformation, presence: true
end
