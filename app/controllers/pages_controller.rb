class PagesController < ApplicationController
  def home
  end

  def shop
    @products = Product.where(:gender=> params[:gender])
    @categories = Category.where({ gender: [params[:gender], "unisex"]})
  end

  def category
    @categories = Category.where({ gender: [params[:gender], "unisex"]})
    @products = Product.joins(:categories).where('products.gender = ? and categories.name = ?', params[:gender], params[:category])
  end

end
