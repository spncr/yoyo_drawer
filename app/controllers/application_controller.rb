class ApplicationController < ActionController::Base
  #before_action :require_login, only: [:new]

  # private
  # def not_authenticated
  #    redirect_to login_path, notice: "Please log in first."
  # end
end
