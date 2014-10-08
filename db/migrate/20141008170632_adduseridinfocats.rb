class Adduseridinfocats < ActiveRecord::Migration
  def change
  	add_column :infocats, :user_id, :integer
  end
end
