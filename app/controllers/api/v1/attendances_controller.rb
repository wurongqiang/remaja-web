module Api
	module V1
		class AttendancesController < Api::V1::BaseController
	      skip_before_action :verify_authenticity_token
	      before_action :authenticate_user
	      before_action :authenticate_client

	      def index
	      	@attendances = Attendance.where(saint_id: current_user.id)
	      end

	      def create
	      	response_message = ''
	      	response_status = :ok

	      	if sessionDoesntExist
	          	response_message = { message: t('api_v1.client_error.422_input_attendance_failed_because_session_doesnt_exist.message') }
	          	response_status = :unprocessable_entity
	        elsif alreadyAttend
	          	response_message = { message: t('api_v1.client_error.422_input_attendance_failed_because_already_attend.message') }
	          	response_status = :unprocessable_entity
            else
		      	Attendance.create(saint_id: current_user.id, session_id: params[:session_id])
	      	end

	    	render json: response_message, status: response_status
	      end

	      private

	      def sessionDoesntExist 
	      	not Session.find_by(id: params[:session_id])
	      end

	      def alreadyAttend 
	      	Attendance.find_by(session_id: params[:session_id], saint_id: current_user.id)
	      end
	  end
	end
end