class ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
  end
end
