class CreateSaintTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :saint_tokens do |t|
      t.string :token, null: false
      t.belongs_to :saint, null: false
      t.timestamps
    end
  end
end
