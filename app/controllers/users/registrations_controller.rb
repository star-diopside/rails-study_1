class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create, :update]

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:username, :email]
    devise_parameter_sanitizer.for(:account_update) << :username
  end
end
