class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find params[:id]
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
    order = Order.find params[:id]
    order.destroy
    redirect_to #the page that you were on
  end


  private

  def order_params
    params.require(:order).permit(:user_id, :status)
  end

end
