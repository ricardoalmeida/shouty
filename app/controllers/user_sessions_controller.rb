class UserSessionsController < ApplicationController
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = I18n.t :login_successful
      redirect_back_or_default root_path
    else
      render :new
    end
  end
  
  def destroy
    current_user_session.destroy if current_user_session
    flash[:notice] = I18n.t :logout_successful
    redirect_back_or_default root_path
  end
end