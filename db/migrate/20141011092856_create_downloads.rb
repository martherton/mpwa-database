class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
    	t.string :title
    	t.text :description
    	t.integer :user_id
    	t.integer :itemorder
    	t.string :routing
        t.boolean :ViewerAllowed
    	t.attachment :docupload
    end
  end
end
