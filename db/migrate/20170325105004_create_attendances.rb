class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
    	t.belongs_to :saint, index: true
    	t.belongs_to :session, index: true
    end
  end
end
