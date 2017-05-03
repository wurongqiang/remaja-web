module Api
	module V1
		class BaseController < ApplicationController
	      before_action { request.format = :json }

	      # def authenticate_user
	      #   authenticate_client && authenticate_token || render_unauthorized
	      # end

	      # def authenticate_token
	      #   user_token = UserToken.find_by(token: request.headers['User-Access-Token'])
	      #   if user_token.present?
	      #     if user_token.expires_in > Time.now.to_i
	      #       @current_user = user_token.user
	      #     else
	      #       response = {
	      #         message: t('api_v1.client_error.401_unauthorized.message', expired_date: Time.at(user_token.expires_in))
	      #       }
	      #       render json: response, status: 401
	      #     end
	      #   else
	      #     false
	      #   end
	      # end

	      # def current_user
	      #   @current_user
	      # end

	      # def render_unauthorized
	      #   response = {
	      #     message: t('api_v1.client_error.401_unauthorized.message')
	      #   }
	      #   render json: response, status: 401
	      # end

	      def authenticate_client
	        if request.headers['API-KEY'] == "134ab462-f5c6-434e-93f2-617c9423ad13"
	          true
	        else
	          response = {
	            message: t('api_v1.client_error.403_forbidden.message')
	          }
	          render json: response, status: 403
	        end
	      end
		end
	end
end
