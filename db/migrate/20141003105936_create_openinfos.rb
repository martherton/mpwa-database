class CreateOpeninfos < ActiveRecord::Migration
  def change
    create_table :openinfos do |t|
    	t.string :title
    	t.string :Openinformation
      t.timestamps
    end
  end
end
