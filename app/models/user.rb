class User < ApplicationRecord
    has_many :statuses
    has_many :tamagotchis, through: :statuses

    validates :username, uniqueness: true

    has_secure_password
end
