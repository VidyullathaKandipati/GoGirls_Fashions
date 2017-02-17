class ChargesController < ApplicationController


  def new
    @order = Order.find params[:order_id]
    @amount = @order.total_cost

    if @amount == 0
      redirect_to :back
    end
  end

  def create
    @order = Order.find params[:order_id]
    @amount = @order.total_cost*100

    @email = @current_user.email

    customer = Stripe::Customer.create(
      :email => @email,
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Get Fashion customer',
      :currency    => 'aud'
    )


    redirect_to order_charges_path


    rescue Stripe::CardError => e
      flash[:error] = e.message
     redirect_to new_order_charge_path


   end


def index
  # @order = Order.find params[:order_id]
  # @amount = @order.total_cost

  @order = Order.find params[:order_id]
  @order.status = true
  @order.save
  UserMailer.payment_success(@order).deliver_now

  session[:order_id] = nil

  redirect_to thanks_path
end


def thanks

end

end
