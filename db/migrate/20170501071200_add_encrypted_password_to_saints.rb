class AddEncryptedPasswordToSaints < ActiveRecord::Migration[5.0]
  def change
  	add_column :saints, :encrypted_password, :string
  end
end
