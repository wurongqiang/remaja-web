class HomeController < ApplicationController
	def index
		redirect_to admin_root_path
	end
end
