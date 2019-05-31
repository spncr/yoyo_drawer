class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = login(params[:name], params[:password])

    if @user
      redirect_back_or_to(:yoyos, notice: 'Logged in!')
    else
      flash.now[:alert] = 'Login mistake ):'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:yoyos, notice: 'Logged out!')
  end
end
