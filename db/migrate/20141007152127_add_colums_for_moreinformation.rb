class AddColumsForMoreinformation < ActiveRecord::Migration
  def change
  	add_column :resumeitems, :Moreinformtion, :text
  	add_column :openinfos, :Moreinformation, :text
  end
end
