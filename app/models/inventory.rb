class Inventory < ApplicationRecord
    belongs_to :status
    belongs_to :item
end
