ActiveAdmin.register Session do

	menu :priority => 5
	permit_params :name, :meeting_id

	index do
	    selectable_column
	    column("Meeting", :meeting, :sortable => :meeting_id)
	    column :name
	    actions
	end	

end
