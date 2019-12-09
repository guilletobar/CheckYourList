class ApplicationController < ActionController::Base
     before_action :require_no_authentication, only: :new
	protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up, keys:[:username,:roles_id])

               devise_parameter_sanitizer.permit(:account_update, keys:[:username ,:roles_id]) 
          end


end
