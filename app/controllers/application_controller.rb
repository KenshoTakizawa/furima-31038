class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: :index


  private

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:first_name, :last_name, :first_name_kana, :last_name_kana, :birth_data])
  end
end