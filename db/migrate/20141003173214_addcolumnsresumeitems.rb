class Addcolumnsresumeitems < ActiveRecord::Migration
  def change



    	add_column :resumeitems, :organisation, :string
    	add_column :resumeitems, :title_or_course, :string
    	add_column :resumeitems, :location, :string
    	add_column :resumeitems, :detail1, :string
    	add_column :resumeitems, :detail2, :string
    	add_column :resumeitems, :detail3, :string
    	add_column :resumeitems, :detail4, :string
    	add_column :resumeitems, :detail5, :string
    	add_column :resumeitems, :detail6, :string
        add_column :resumeitems, :user_id, :integer
  end
end
