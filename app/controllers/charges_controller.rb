class ChargesController < ApplicationController


  def new
    @order = Order.find params[:order_id]
    @amount = @order.total_cost
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
      :description => 'Fashion brand customer',
      :currency    => 'aud'
    )

  redirect_to order_charges_path

    rescue Stripe::CardError => e
      flash[:error] = e.message
     redirect_to new_order_charge_path
   end

def index
  @order = Order.find params[:order_id]
  @amount = @order.total_cost
end




end
