class User < ApplicationRecord
    has_many :statuses
    has_many :tamagotchis, through: :statuses
    has_many :inventories
    has_many :items, through: :inventories
end
