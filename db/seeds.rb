# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.destroy_all
Inventory.destroy_all
Tamagotchi.destroy_all
Item.destroy_all
User.destroy_all

user1 = User.create(username: 'asd', password: '123')
tamagotchi1 = Tamagotchi.create(name: 'tname1', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://66.media.tumblr.com/7e4951d895d1b4db1f2d2ea6ba89b686/tumblr_oui6v5rcM51ws4s25o1_500.gif')
item1 = Item.create(name: 'iname1', effect: 2, category: 'food', price: 5, image: 'https://www.nicepng.com/png/full/106-1065906_kawaii-food-doodle-part-doodle-cute-cartoon-food.png')
status1 = Status.create(user: user1, tamagotchi: tamagotchi1, happiness: 10, fullness: 10, money: 100)
inventory1 = Inventory.create(status: status1, item: item1, quantity: 3)