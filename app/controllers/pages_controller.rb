class PagesController < ApplicationController
  def home
  end

  def shop
    @products = Product.where(:gender=> params[:gender])
    @categories = Category.where({ gender: [params[:gender], "unisex"]})
    @gender = params[:gender]

  end

  def category
    @categories= Category.all
    @products = Product.joins(:categories).where('products.gender = ? and categories.name = ?', params[:gender], params[:category])
    render "pages/shop"
  end



end
