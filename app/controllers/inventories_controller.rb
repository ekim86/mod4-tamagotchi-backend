class InventoriesController < ApplicationController
  before_action :get_info, only: [:buy, :sell, :feed, :play]

  def get_info
    @inventory_params = inventories_params
    @status = Status.find(@inventory_params['status_id'])
    @item = Item.find(@inventory_params['item_id'])
    @inventory = nil
  end

  def reduce
    @inventory = Inventory.find_by(status_id: @inventory_params['status_id'], item_id: @inventory_params['item_id'])

    if @inventory && @inventory.quantity > 1
      @inventory.quantity -= 1
      @inventory.save
    else
      @inventory.quantity = 0
      @inventory.destroy
    end
  end

  def index
    render json: Status.find(params[:status_id]).inventories
  end

  def buy
    # Check if user has enough money
    if @status.money >= @item.price
      @inventory = Inventory.find_by(status_id: @inventory_params['status_id'], item_id: @inventory_params['item_id'])
      if @inventory
        @inventory.quantity += 1
        @inventory.save
      else
        @inventory = Inventory.create(@inventory_params)
      end
      @status.money -= @item.price
      @status.save
    end

    render json: {
      inventory: InventorySerializer.new(@inventory),
      money: @status.money
    }
  end

  def sell
    reduce

    @status.money += @item.price
    @status.save
    
    render json: {
      inventory: InventorySerializer.new(@inventory),
      money: @status.money
    }
  end

  def feed
    reduce

    @status.fullness += @item.effect
    @status.save

    render json: {
      inventory: InventorySerializer.new(@inventory),
      fullness: @status.fullness
    }
  end

  def play
    reduce

    @status.happiness += @item.effect
    @status.money += @item.effect
    @status.save

    render json: {
      inventory: InventorySerializer.new(@inventory),
      happiness: @status.happiness,
      money: @status.money
    }
  end

  def inventories_params
    params.require(:inventory).permit(:item_id, :status_id, :id)
  end
end
