class Addcolumntoresumeitems < ActiveRecord::Migration
  def change
  	add_column :resumeitems, :extradetail, :text
  end
end
