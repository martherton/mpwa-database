class CreateOpeninfos < ActiveRecord::Migration
  def change
    create_table :openinfos do |t|
    	t.string :title
    	t.string :Openinformation
    	t.integer :user_id 
      t.timestamps
    end
  end
end
