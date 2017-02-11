class PagesController < ApplicationController
  def home
  end

  def male
    @categories= Category.all
    @products = Product.where(:gender=>"male")
  end

  def female
    @categories= Category.all
    @products = Product.where(:gender=>"female")
  end

  def womenCategory
    @categories= Category.all
    @products = Product.joins(:categories).where('gender = ? and categories.name = ?', 'female', params[:category])
    render "pages/female"
  end

  def menCategory
    @categories= Category.all
    @products = Product.joins(:categories).where('gender = ? and categories.name = ?', 'male', params[:category])
    render "pages/male"
  end


end
