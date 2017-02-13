class ApplicationController < ActionController::Base
  include CurrentOrder
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_user
  before_action :set_order

  private
  def fetch_user
    @current_user = User.find_by :id=>session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

  def check_if_admin
    redirect_to login_path unless (@current_user.present? && @current_user.admin?)
  end

  def check_if_logged_in
    redirect_to new_user_path unless @current_user.present?
  end



end
