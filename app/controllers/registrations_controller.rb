class RegistrationsController < ApplicationController
  def sign_up_params
    params.require(:user).permit(:avatar, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:avatar, :email, :password, :password_confirmation)
  end
end
