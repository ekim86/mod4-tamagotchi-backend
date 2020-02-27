class Status < ApplicationRecord
    belongs_to :user
    belongs_to :tamagotchi
    has_many :inventories
    has_many :items, through: :inventories
end
