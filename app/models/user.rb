class User < ApplicationRecord
    has_many :statuses
    has_many :tamagotchis, through: :statuses
end
