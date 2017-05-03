module Api
	module V1
		class SessionsController < Api::V1::BaseController
	      skip_before_action :verify_authenticity_token
	      before_action :authenticate_client

	      def login
		    @saint = Saint.authenticate(params[:username], params[:password])

	        if @saint
	          token = SecureRandom.hex(20)
	          @saint_token = SaintToken.create(
	            token: token,
	            saint: @saint
	          )

	          @status_code = 200
	          render status: :ok
	        else
	          @status_code = 422
	          render status: :unprocessable_entity
	        end
	      end

	      def logout
	        saint_token = SaintToken.find_by(token: request.headers['Saint-Access-Token'])
	        saint_token.destroy if saint_token.present?
	        
	        render json: '', status: :ok
	      end
	      
	  end
	end
end




