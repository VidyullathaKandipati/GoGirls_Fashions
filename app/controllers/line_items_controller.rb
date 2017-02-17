class LineItemsController<ApplicationController
# CurrentOrder from controllers/concerns/current_order.rb
  include CurrentOrder


before_action :set_order, only: [:create]

  def index
  end

  def show
  end

  def new
  end

  def create
    product = Product.find(params[:product_id])
    @line_item = @order.add_product(product.id)

    if @line_item.save
      flash[:msg] = "Item added to the cart."
    else
      flash[:error] = "Could not add item to the cart."
    end

    redirect_to product_path(params[:product_id])
  end

  def edit
  end

  def destroy
    @item = LineItem.find params[:id]
    @item.destroy
    redirect_to :back
  end

  private
  def line_item_params
    params.require(:line_item).permit(:product_id, :order_id, :quantity)
  end
end
