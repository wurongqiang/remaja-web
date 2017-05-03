module Api
	module V1
		class UsersController < Api::V1::BaseController
	      skip_before_action :verify_authenticity_token
	      before_action :authenticate_user
	      before_action :authenticate_client

	      def change_password
	      	current_user.update(password: params[:password])

	        render json: '', status: :ok
	      end
		end
	end
end