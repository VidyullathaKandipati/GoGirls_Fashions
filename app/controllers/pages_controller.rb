class PagesController < ApplicationController
  def home
  end

  def male
    @products = Product.where(:gender=>"male")
  end

  def female
    @products = Product.where(:gender=>"female")
  end


end
