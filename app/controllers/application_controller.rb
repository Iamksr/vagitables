class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	# def current_cart
 #    if current_user.present?
 #      return Cart.find_or_create_by(user_id: current_user.id, is_done: false)
 #      # return Cart.find_or_create_by(user_id: current_user.id)
 #    end
 #  end
  # helper_method :current_cart
	  
protected



	def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up) do |user_params|

	user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :address, :phone)

	end



	devise_parameter_sanitizer.permit(:account_update) do |user_params|

	user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :address, :phone)

	end
	end

end

