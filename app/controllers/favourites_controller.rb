class FavouritesController < ApplicationController
  before_action :check_if_logged_in

  def create
    # @product = Product.find params[:product_id]
    @favourite = Favourite.create( product_id: params[:product_id], user_id: params[:user_id] )
    redirect_to product_path(params[:product_id])
  end

  def destroy
    favourite = Favourite.find params[:id]
    favourite.destroy
  end
end
