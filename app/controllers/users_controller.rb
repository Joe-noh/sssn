class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]
  before_filter :require_logout

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url
    else
      render action: :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
