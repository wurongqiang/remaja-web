class AddPasswordToSaints < ActiveRecord::Migration[5.0]
  def change
  	add_column :saints, :password_hash, :string
  	add_column :saints, :password_salt, :string
  end
end
