class Changecolumnresumeitems < ActiveRecord::Migration
  def change
  	rename_column :resumeitems, :type, :type_id
  end
end
