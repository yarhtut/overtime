class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def resource_params
    params.require(:user).permit(dashboard.permitted_attributes)
  end

end
