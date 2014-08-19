class UserSessionsController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]

  def new
    if logged_in?
      redirect_to book_path
    else
      @session = UserSession.new
    end
  end

  def create
    @session = UserSession.new(session_params)

    if @session.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to root_url
  end

  private

  def session_params
    params.require(:user_session).permit(:name, :password)
  end
end
