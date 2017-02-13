class LineItemsController<ApplicationController

  include CurrentOrder

# PROBABLY DONT NEED ANYTHING IN HERE!

before_action :set_order, only: [:create]

before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
    product = Product.find(params[:product_id])
    @line_item = @order.line_items.build(product: product)
    @line_item.quantity += 1

    if @line_item.save
      flash[:msg] = "Item added to the cart."
    else
      flash[:error] = "Could not add item to the cart."
    end

    redirect_to product_path(params[:product_id])
  end

  def edit
  end
end
