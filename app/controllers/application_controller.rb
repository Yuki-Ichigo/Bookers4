class ApplicationController < ActionController::Base
	
	def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end
	def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
	    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
    end

end
