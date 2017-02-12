class FavouritesController < ApplicationController
  # before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @favourites = Favourite.all
  end

  def show
  end

  def new
    @favourite = Favourite.new
  end

  def create
    # @favourite = Favourite.create favourite_params
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
