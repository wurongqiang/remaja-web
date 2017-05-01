ActiveAdmin.register Attendance do
	
	menu :priority => 6
	permit_params :saint_id, :session_id

	index do
	    selectable_column
	    column("Session", :session, :sortable => :session_id)
	    column("Saint", :saint, :sortable => :saint_id)
	    actions
	end	
end