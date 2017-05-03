module Api
	module V1
		class BaseController < ApplicationController
	      before_action { request.format = :json }

	      def authenticate_user
	        authenticate_client && authenticate_token || render_unauthorized
	      end

	      def authenticate_token
	        saint_token = SaintToken.find_by(token: request.headers['Saint-Access-Token'])
	        if saint_token.present?
              @current_user = saint_token.saint
	        else
	          false
	        end
	      end

	      def current_user
	        @current_user
	      end

	      def render_unauthorized
	        response = {
	          message: t('api_v1.client_error.401_unauthorized.message')
	        }
	        render json: response, status: 401
	      end

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
