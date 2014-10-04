class Addcolumnopeninfo < ActiveRecord::Migration
  def change
  	add_column :openinfos, :user_id, :integer
  end
end
