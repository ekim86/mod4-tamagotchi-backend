class InventorySerializer < ActiveModel::Serializer
  attributes :id, :status_id, :item_id, :quantity
  belongs_to :item
end
