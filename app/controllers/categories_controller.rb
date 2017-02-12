class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to new_category_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @category.update(catergory_params)
        format.html { redirect_to @category, notice: 'Category is successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to product_categories_path, notice: 'Category is successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_category
    @category = Category.find params[:id]
  end

  def catergory_params
    params.require(:category).permit(:name)
  end

end
