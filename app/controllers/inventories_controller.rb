class InventoriesController < ApplicationController
  def index
    render json: Status.find(params[:status_id]).inventories
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
