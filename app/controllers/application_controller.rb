class ApplicationController < ActionController::Base
	def set_current_user
		User.current = current_user
	end	
end
