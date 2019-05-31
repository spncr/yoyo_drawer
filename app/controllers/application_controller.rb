class ApplicationController < ActionController::Base
  before_action :require_login, only: [:new]

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first."
  end
end
