class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    #is there such user and does the password match
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      user.orders << @order if @order.present?
      # @order.update :user_id => user.id if @order.present?
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password. Signup if you are new user
                       before making reservations."
      redirect_to login_path
    end
  end

  def destroy
    # Deleting the unpaid order upon signout / logout
    order = Order.find session[:order_id]
    order.destroy if order.status == false

    # Deleting session related variables
    session[:user_id] = nil
    session[:order_id] = nil

    flash[:logout] = "Logged out successfully"
    redirect_to root_path
  end
end
