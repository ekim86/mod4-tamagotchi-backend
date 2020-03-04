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
user2 = User.create(username: 'danliu277', password: '123')
user3 = User.create(username: 'ekim86', password: '123')

tamagotchi1 = Tamagotchi.create(name: 'Gudatama', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/gudatama.webp')
tamagotchi2 = Tamagotchi.create(name: 'Kuchipatchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Kuchipatchi.png')
tamagotchi3 = Tamagotchi.create(name: 'Violetchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Violetchi.png')
tamagotchi4 = Tamagotchi.create(name: 'Lovelitchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Lovelitchi.png')
tamagotchi5 = Tamagotchi.create(name: 'Gozarutchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Gozarutchi.png')
tamagotchi6 = Tamagotchi.create(name: 'Mimitchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Mimitchi.png')
tamagotchi7 = Tamagotchi.create(name: 'Sunnytchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Sunnytchi.png')
tamagotchi8 = Tamagotchi.create(name: 'Makiko', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Makiko.png')
tamagotchi9 = Tamagotchi.create(name: 'Furikotchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Furikotchi.png')
tamagotchi10 = Tamagotchi.create(name: 'Petipuchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: '/Petipuchi.png')

item1 = Item.create(name: 'ramen', effect: 2, category: 'food', price: 5, image: '/ramen.png')
item2 = Item.create(name: 'omurice', effect: 2, category: 'food', price: 5, image: '/omurice.png')
item3 = Item.create(name: 'popcorn', effect: 2, category: 'food', price: 2, image: '/popcorn.png')
item4 = Item.create(name: 'ice cream', effect: 2, category: 'food', price: 2, image: '/icecream.png')
item5 = Item.create(name: 'watermelon', effect: 2, category: 'food', price: 3, image: '/watermelon.png')
item6 = Item.create(name: 'fried egg', effect: 2, category: 'food', price: 1, image: '/friedegg.png')

item7 = Item.create(name: 'beach ball', effect: 2, category: 'toy', price: 3, image: '/beachball.png')
item8 = Item.create(name: 'lego', effect: 7, category: 'toy', price: 5, image: '/lego.png')
item9 = Item.create(name: 'dollhouse', effect: 9, category: 'toy', price: 7, image: '/dollhouse.gif')
item10 = Item.create(name: 'racecar', effect: 5, category: 'toy', price: 3, image: '/racecar.png')
item11 = Item.create(name: 'barbie', effect: 7, category: 'toy', price: 5, image: '/barbie.png')
item12 = Item.create(name: 'strawberries', effect: 7, category: 'food', price: 5, image: '/strawberries.png')

item13 = Item.create(name: 'musubi', effect: 7, category: 'food', price: 5, image: '/musubi.png')
item14 = Item.create(name: 'waffles', effect: 5, category: 'food', price: 3, image: '/waffles.png')
item15 = Item.create(name: 'fries', effect: 3, category: 'food', price: 2, image: '/fries.png')
item16 = Item.create(name: 'taco', effect: 2, category: 'food', price: 1, image: '/taco.png')
item17 = Item.create(name: 'rollcake', effect: 5, category: 'food', price: 3, image: '/rollcake.gif')
item18 = Item.create(name: 'mooncake', effect: 5, category: 'food', price: 3, image: '/mooncake.txt')
item18 = Item.create(name: 'tamagotchi', effect: 12, category: 'toy', price: 8, image: '/tamagotchi.gif')


status1 = Status.create(user: user1, tamagotchi: tamagotchi1, happiness: 10, fullness: 10, money: 100, nickname:'GiGgLeZ')
status2 = Status.create(user: user1, tamagotchi: tamagotchi2, happiness: 10, fullness: 10, money: 100, nickname:'bOo bOoo')
status3 = Status.create(user: user2, tamagotchi: tamagotchi3, happiness: 10, fullness: 10, money: 100, nickname:'fReckLeZ')
status4 = Status.create(user: user2, tamagotchi: tamagotchi4, happiness: 10, fullness: 10, money: 100, nickname:'snOoOgie bUG')
status5 = Status.create(user: user2, tamagotchi: tamagotchi5, happiness: 10, fullness: 10, money: 100, nickname:'bUbbies')
status6 = Status.create(user: user3, tamagotchi: tamagotchi6, happiness: 10, fullness: 10, money: 100, nickname:'dimpLeZ')
status7 = Status.create(user: user1, tamagotchi: tamagotchi7, happiness: 10, fullness: 10, money: 100, nickname:'bBy cAkeZ')
status8 = Status.create(user: user1, tamagotchi: tamagotchi8, happiness: 10, fullness: 10, money: 100, nickname:'gOo gOo')
status9 = Status.create(user: user3, tamagotchi: tamagotchi9, happiness: 10, fullness: 10, money: 100, nickname:'iNdi')
status10 = Status.create(user: user1, tamagotchi: tamagotchi10, happiness: 10, fullness: 10, money: 100, nickname:'pickLey pOoOo')
status11 = Status.create(user: user2, tamagotchi: tamagotchi2, happiness: 10, fullness: 10, money: 100, nickname:'fluffZ')
status12 = Status.create(user: user3, tamagotchi: tamagotchi8, happiness: 10, fullness: 10, money: 100, nickname:'Button')

inventory1 = Inventory.create(status: status1, item: item1, quantity: 3)
inventory2 = Inventory.create(status: status2, item: item2, quantity: 4)
inventory3 = Inventory.create(status: status3, item: item3, quantity: 5)
inventory4 = Inventory.create(status: status4, item: item4, quantity: 6)
inventory5 = Inventory.create(status: status5, item: item5, quantity: 1)
inventory6 = Inventory.create(status: status6, item: item6, quantity: 9)
inventory7 = Inventory.create(status: status7, item: item7, quantity: 13)
inventory8 = Inventory.create(status: status8, item: item8, quantity: 12)
inventory9 = Inventory.create(status: status9, item: item9, quantity: 11)
inventory10 = Inventory.create(status: status10, item: item10, quantity: 8)
inventory11 = Inventory.create(status: status11, item: item11, quantity: 9)
inventory12 = Inventory.create(status: status12, item: item11, quantity: 7)
inventory13 = Inventory.create(status: status12, item: item11, quantity: 5)

