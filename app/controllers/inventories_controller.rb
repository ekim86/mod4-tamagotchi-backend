class InventoriesController < ApplicationController
  def index
    render json: Status.find(params[:status_id]).inventories
  end

  def buy
    inventory_params = inventories_params
    status = Status.find(inventory_params['status_id'])
    item = Item.find(inventory_params['item_id'])
    inventory = nil
    
    # Check if user has enough moneu
    if status.money >= item.price
      inventory = Inventory.find_by(status_id: inventory_params['status_id'], item_id: inventory_params['item_id'])
      if inventory
        inventory.quantity += 1
        inventory.save
      else
        inventory = Inventory.create(inventory_params)
      end
      status.money -= item.price
      status.save
    end

    render json: {
      inventory: InventorySerializer.new(inventory),
      money: status.money
    }
  end

  def sell
    inventory_params = inventories_params
    status = Status.find(inventory_params['status_id'])
    item = Item.find(inventory_params['item_id'])
    inventory = Inventory.find_by(status_id: inventory_params['status_id'], item_id: inventory_params['item_id'])
    if inventory && inventory.quantity > 1
      inventory.quantity -= 1
      inventory.save
    else
      inventory.quantity = 0
      inventory.destroy
    end
    status.money += item.price
    status.save
    
    render json: {
      inventory: InventorySerializer.new(inventory),
      money: status.money
    }
  end

  def inventories_params
    params.require(:inventory).permit(:item_id, :status_id, :id)
  end
end
