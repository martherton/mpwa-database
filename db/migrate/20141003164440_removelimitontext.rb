class Removelimitontext < ActiveRecord::Migration
  def change
  	change_column :openinfos, :Openinformation, :text, :limit => nil
  end
end
