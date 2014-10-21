class AddColumnDownloads < ActiveRecord::Migration
  def change
  	add_column :downloads, :ViewerAllowed, :boolean
  end
end
