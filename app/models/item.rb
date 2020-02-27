class Item < ApplicationRecord
    has_many :inventories
    has_many :statuses, through: :inventories
end
