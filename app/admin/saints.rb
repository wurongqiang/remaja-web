ActiveAdmin.register Saints do

	permit_params :name, :email, :phone, :hall, :profile_picture_url, :gender, :status, :grade, :batch

	index do
	    selectable_column
	    id_column
	    column :name
	    column :email
	    column :phone
	    column :hall
	    column :created_at
	    actions
	end	

end
