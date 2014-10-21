class Corporate < ActiveRecord::Base
	has_attached_file :corpimage,
	:url => "/images/:hash.:extension",
		:hash_secret => "longSecretString",
		:path =>"/images/:hash.:extension",
		:storage => :s3,
		:s3_credentials => Proc.new {|a| a.instance.s3_credentials }

	validates_attachment_content_type :corpimage, :content_type => /\Aimage\/.*\Z/

	has_attached_file :logoimage,
	:url => "/images/:hash.:extension",
		:hash_secret => "longSecretString",
		:path =>"/images/:hash.:extension",
		:storage => :s3,
		:s3_credentials => Proc.new {|a| a.instance.s3_credentials }

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
  	
  where("name like ? or sector like ?", "%#{query}%", "%#{query}") 

	 


	end

	def s3_credentials
		{ :access_key_id => "AKIAJ6JP3U2RXXRDMZJQ",
:secret_access_key => "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",
:bucket => "m356p748w857a" }
	end	

end
