class CreateCorporates < ActiveRecord::Migration
  def change
    create_table :corporates do |t|

    	t.string :name
  	t.string :country
  	t.string :sector
  	t.string :address
  	t.text :activity
  	t.float :latitude
  	t.float :longitude
  	t.string :urlevernote
  	t.string :urlcompanywebsite
    t.string :urlgooglenews
  	t.string :Bloombergid
  	t.attachment :corpimage
    t.attachment :logoimage
  	t.integer :user_id
      t.timestamps
    end
  end
end
