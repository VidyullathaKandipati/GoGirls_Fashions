class ReviewsController < ApplicationController
  before_action :check_if_logged_in

  def create
    @review = Review.create(desc: params[:review][:desc], user_id: params[:user_id], product_id: params[:product_id])
    redirect_to product_path(params[:product_id])
  end

  def edit
  end

  def update
  end

  def destroy
    review = Review.find params[:id]
    review.destroy
  end
end
