class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @customer_order = Order.find params[:id]
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
  end

  def edit
    @order = Order.find params[:id]
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to #the page that you were on
  end

  def destroy
    @order = Order.find params[:id]
    @order.destroy if @order.id == session[:order_id]
    session[:order_id] = nil

    respond_to do |format|
      format.html {redirect_to root_path, notice: 'Your cart is currently empty'}
    end

    # redirect_to shop_path
    #the page that you were on
  end

  def remove_item product_id, order_item
    order_item.delete(product_id)
  end


  private

  def order_params
    params.require(:order).permit(:user_id, :status, :id)
  end

end
