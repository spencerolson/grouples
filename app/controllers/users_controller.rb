class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  layout "special"

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to cohorts_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

