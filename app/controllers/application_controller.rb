class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_site_dot_coffee_variables


  private

    def set_site_dot_coffee_variables
      gon.page_name = "#{controller_name}_#{action_name}"
    end

end
