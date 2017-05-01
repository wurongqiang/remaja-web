ActiveAdmin.register Meeting do
	
	menu :priority => 4
	permit_params :name, :date

	index do
	    selectable_column
	    id_column
	    column :name
	    column :date
	    actions
	end		
end
