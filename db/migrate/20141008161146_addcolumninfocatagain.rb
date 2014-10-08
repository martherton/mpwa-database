class Addcolumninfocatagain < ActiveRecord::Migration
  def change
  	add_column :infocats, :routing, :string
  end
end
