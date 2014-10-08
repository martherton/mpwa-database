class Addcolumninfocats < ActiveRecord::Migration
  def change
  	add_column :infocats, :title, :string
  	add_column :infocats, :brief_description, :text
  	add_column :infocats, :item_order, :integer
  end
end
