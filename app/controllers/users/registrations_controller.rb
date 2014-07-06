class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create, :update]

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:login_name, :username]
    devise_parameter_sanitizer.for(:account_update) << :username
  end
end
