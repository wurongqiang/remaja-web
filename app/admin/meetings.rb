ActiveAdmin.register Meetings do

	permit_params :name, :date

	index do
	    selectable_column
	    id_column
	    column :name
	    column :date
	    actions
	end	
end