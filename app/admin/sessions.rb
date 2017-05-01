ActiveAdmin.register Session do
	
	menu :priority => 5
	permit_params :name, :meeting_id

	index do
	    selectable_column
	    id_column
	    column :name
	    actions
	end	
end
