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

# route to add via line item
#edit
#destroy

# class CartsController < ApplicationController
#   before_action :set_cart, only: [:show, :edit, :update, :destroy]
#
#   # GET /carts
#   # GET /carts.json
#   def index
#     @carts = Cart.all
#   end
#
#   # GET /carts/1
#   # GET /carts/1.json
#   def show
#   end
#
#   # GET /carts/new
#   def new
#     @cart = Cart.new
#   end
#
#   # GET /carts/1/edit
#   def edit
#   end
#

#   # POST /carts
#   # POST /carts.json
#   def create
#     @cart = Cart.new(cart_params)
#
#     respond_to do |format|
#       if @cart.save
#         format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
#         format.json { render :show, status: :created, location: @cart }
#       else
#         format.html { render :new }
#         format.json { render json: @cart.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # PATCH/PUT /carts/1
#   # PATCH/PUT /carts/1.json
#   def update
#     respond_to do |format|
#       if @cart.update(cart_params)
#         format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
#         format.json { render :show, status: :ok, location: @cart }
#       else
#         format.html { render :edit }
#         format.json { render json: @cart.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # DELETE /carts/1
#   # DELETE /carts/1.json
#   def destroy
#     @cart.destroy
#     respond_to do |format|
#       format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_cart
#       @cart = Cart.find(params[:id])
#     end
#
#     # Never trust parameters from the scary internet, only allow the white list through.
#     def cart_params
#       params.fetch(:cart, {})
#     end
# end
