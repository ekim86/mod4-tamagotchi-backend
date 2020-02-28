class InventoriesController < ApplicationController
  def index
    render json: Status.find(params[:status_id]).inventories
  end

  def buy
    inventory_params = inventories_params
    inventory = Inventory.find_by(status_id: inventory_params['status_id'], item_id: inventory_params['item_id'])
    if inventory
      inventory.quantity += 1
      inventory.save
    else
      inventory = Inventory.create(inventory_params)
    end

    render json: inventory
  end

  def sell
    inventory_params = inventories_params
    inventory = Inventory.find_by(status_id: inventory_params['status_id'], item_id: inventory_params['item_id'])
    if inventory && inventory.quantity > 1
      inventory.quantity -= 1
      inventory.save
    else
      inventory.quantity = 0
      inventory.destroy
    end
    
    render json: inventory
  end

  def inventories_params
    params.require(:inventory).permit(:item_id, :status_id, :id)
  end
end
