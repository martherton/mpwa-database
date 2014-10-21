class Download < ActiveRecord::Base
	has_attached_file :docupload,
		:url => "/documents/:hash.:extension",
		:hash_secret => "longSecretString",
		:path =>"/documents/:hash.:extension",
		:storage => :s3,
		:s3_credentials => Proc.new {|a| a.instance.s3_credentials }


	validates_attachment :docupload, content_type: { content_type: [ "application/msword" , "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/vnd.ms-excel" , "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/pdf" ]}
	
	belongs_to :user

	def s3_credentials
		{ :access_key_id => "AKIAIVNBXKTNNXTMJZNQ",
:secret_access_key => "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",
:bucket => "m356p748w857a" }
	end	


end


