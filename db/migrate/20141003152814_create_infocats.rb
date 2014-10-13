class CreateInfocats < ActiveRecord::Migration
  def change
    create_table :infocats do |t|
    	t.string :title
  	  t.string :brief_description
      t.integer :itemorder
  	  t.string :routing
      t.integer :user_id
      t.timestamps
    end
  end
end
