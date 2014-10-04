class CreateResumeitems < ActiveRecord::Migration
  def change
    create_table :resumeitems do |t|

    	t.string :type
    	t.string :organisation
    	t.string :location
    	t.string :title_or_course
    	t.string :detail1
    	t.string :detail2
    	t.string :detail3
    	t.string :detail4
    	t.string :detail5
    	t.string :detail6
    	t.string :start_date
    	t.string :end_date
      t.timestamps
    end
  end
end
