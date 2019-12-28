class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

    def configure_permited_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :avatar])
    end
end
