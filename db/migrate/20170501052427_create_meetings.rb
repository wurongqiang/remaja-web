class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
