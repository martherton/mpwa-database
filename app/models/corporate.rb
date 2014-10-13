class Corporate < ActiveRecord::Base
	has_attached_file :corpimage
	validates_attachment_content_type :corpimage, :content_type => /\Aimage\/.*\Z/

	has_attached_file :logoimage
	validates_attachment_content_type :logoimage, :content_type => /\Aimage\/.*\Z/

	belongs_to :user
	validates :name, presence: true, uniqueness: true
	validates :address, presence: true, uniqueness: true

	geocoded_by :address
	before_validation :geocode

	def country_name
    country = Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end

  def self.search(query)
  	
  where("name like ?", "%#{query}%") 
	 where("sector like ?", "%#{query}%") 
	 


end

end
