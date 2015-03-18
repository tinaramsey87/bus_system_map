class SessionsController < ApplicationController
  def new

  end

  def create
    @admin = Admin.authenticate(params[:username], params[:password])
    if @admin
      flash[:notice] = "You've been logged in."
      session[:admin_id] = @admin.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem logging you in."
      redirect_to log_in_path
    end
  end

  def destroy
    if session[:admin_id] == nil
      flash[:alert] = "No admin logged in"
      redirect_to "/"
    else
      session[:admin_id] = nil
      flash[:notice] = "You've been logged out successfully."
      redirect_to "/"
    end
  end

end
