class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :email,  emages_attributes: [:url, :description, :id]])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :email, images_attributes: [:url, :description, :id]])
    end

        
        
end

#devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :phone])
#devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :phone])
