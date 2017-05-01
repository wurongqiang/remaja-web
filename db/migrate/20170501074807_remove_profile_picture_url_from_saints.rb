class RemoveProfilePictureUrlFromSaints < ActiveRecord::Migration[5.0]
  def change
  	remove_column :saints, :profile_picture_url
  end
end
