class CreateInfocats < ActiveRecord::Migration
  def change
    create_table :infocats do |t|

      t.timestamps
    end
  end
end
