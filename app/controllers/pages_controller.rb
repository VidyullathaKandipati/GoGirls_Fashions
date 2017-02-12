class PagesController < ApplicationController
  def home
  end

  def shop
    @categories= Category.all
    @products = Product.where(:gender=> params[:gender])
  end

  def category
    @categories= Category.all
    @products = Product.joins(:categories).where('gender = ? and categories.name = ?', params[:gender], params[:category])
    render "pages/shop"
  end

end
