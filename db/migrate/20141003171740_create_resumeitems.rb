class CreateResumeitems < ActiveRecord::Migration
  def change
    create_table :resumeitems do |t|

    	t.string :type
    	t.string :organisation
    	t.string :location
    	t.string :title_course
    	t.string :detail1
    	t.string :detail2
    	t.string :detail3
    	t.string :detail4
    	t.string :detail5
    	t.string :detail6
    	t.string :start_date
    	t.string :end_date
        t.text :detail
        t.string :sections
        t.integer :user_id
        t.text :Moreinformation
        t.text :extradetail
        t.integer :itemorder
        t.timestamps
    end
  end
end
