ActiveAdmin.register Saint do
	
	menu :priority => 3
	permit_params :name, :email, :phone, :hall, :gender

	index do
	    selectable_column
	    id_column
	    column :name
	    column :email
	    column :phone
	    column :hall
	    actions
	end	

end
