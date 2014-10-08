class ChangeMoreinfoColumnName < ActiveRecord::Migration
  def change
  	rename_column :resumeitems, :Moreinformtion, :Moreinformation
  end
end
