class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
    	t.belongs_to :meeting, index: true
    	t.string :name

    	t.timestamps
    end
  end
end
