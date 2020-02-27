class StatusSerializer < ActiveModel::Serializer
  attributes :id, :happiness, :fullness, :money, :user_id, :tamagotchi_id
  has_many :inventories
end
