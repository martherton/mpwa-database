class Chagecolumnnameresumeitems2 < ActiveRecord::Migration
  def change
  	rename_column :resumeitems, :type_id, :sections
  end
end
