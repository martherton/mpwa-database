class CreateOpeninfos < ActiveRecord::Migration
  def change
    create_table :openinfos do |t|
    	t.string :title
    	t.text :Openinformation
    	t.integer :user_id 
    	t.text :Moreinformation
  	  t.integer :itemorder
  	
      t.timestamps
    end
  end
end
