class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

 	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Set parameters for devise sign_up method
    devise_parameter_sanitizer.for( :sign_up ) << :email
    devise_parameter_sanitizer.for( :sign_up ) << :password
    devise_parameter_sanitizer.for( :sign_up ) << :password_confirmation
    devise_parameter_sanitizer.for( :sign_up ) << :name
    # Set parameters for devise sign_in method
    devise_parameter_sanitizer.for( :sign_in ) << :email
    devise_parameter_sanitizer.for( :sign_in ) << :password
  end
end
