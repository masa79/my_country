class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  # 追加したキーのパラメーターを許可するためのメソッド
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

end
