class CreateSaints < ActiveRecord::Migration[5.0]
  def change
    create_table :saints do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :hall
      t.string :gender
      t.string :profile_picture_url

      t.timestamps
    end
  end
end
