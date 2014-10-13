class Download < ActiveRecord::Base
	has_attached_file :docupload, {
    :url => "/system/:hash.:extension",
    :hash_secret => "longSecretString"
} 

	validates_attachment :docupload, content_type: { content_type: [ "application/msword" , "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/vnd.ms-excel" , "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/pdf" ]}
	
	belongs_to :user




end


