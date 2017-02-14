module CurrentOrder
  extend ActiveSupport::Concern

  private

  def set_order
    @order = Order.find(session[:order_id])

    rescue ActiveRecord::RecordNotFound

    # @order = Order.create(user_id: @current_user.id, status: false)
    @order = Order.create(status: false)
    session[:order_id] = @order.id
  end
end
