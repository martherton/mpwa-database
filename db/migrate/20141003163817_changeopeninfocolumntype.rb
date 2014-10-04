class Changeopeninfocolumntype < ActiveRecord::Migration
  def change
  	change_column :openinfos, :Openinformation, :text
  end

  
end
