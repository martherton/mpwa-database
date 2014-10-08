class AddColumsForOrder < ActiveRecord::Migration
  def change
  	add_column :resumeitems, :itemorder, :integer
  	add_column :openinfos, :itemorder, :integer
  end
end
