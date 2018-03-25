class SessionsController < ApplicationController

  def create
    if user = User.update_or_create(request.env["omniauth.auth"])
      session[:user_id]  = user.id
      redirect_to dashboard_index_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end
