class Chagecolumnnameresumeitems3 < ActiveRecord::Migration
  def change
  	rename_column :resumeitems, :title_or_course, :title_course
  end
end
