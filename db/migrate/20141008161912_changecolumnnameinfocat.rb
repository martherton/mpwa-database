class Changecolumnnameinfocat < ActiveRecord::Migration
  def change
  	rename_column :infocats, :item_order, :itemorder
  end
end
