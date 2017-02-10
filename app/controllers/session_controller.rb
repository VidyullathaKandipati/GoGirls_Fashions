class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    #is there such user and does the password match
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_path
    else
      flash[:error] = "Invalid email or password. Signup if you are new user
                       before making reservations."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:logout] = "Logged out successfully"
    redirect_to products_path
  end
end
