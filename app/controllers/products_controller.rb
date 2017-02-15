class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def search
    @products = Product.where :gender => params[:gender]
  end

  def show
  end

  def new
    @products = Product.all
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if params[:product][:images].present?
      params[:product][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        @product.images << req["public_id"]
      end
    end
    if @product.save
      flash[:create] = "Product created successfully"
      redirect_to new_product_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if params[:product][:images].present?
      params[:product][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        @product.images << req["public_id"]
      end
    end

    @product.update_attributes(product_params)

    if @product.save
      flash[:create] = "Product updated successfully"
      redirect_to new_product_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to new_product_path, notice: 'Product is successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find params[:id]
  end

  def product_params
    params.require(:product).permit(:name, :cost, :size, :color, :gender, :brand, :info)
  end

end
