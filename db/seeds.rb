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
user4 = User.create(username: 'hurricanejay', password: '123')
user5 = User.create(username: 'Candillan', password: '123')

tamagotchi1 = Tamagotchi.create(name: 'Mametchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://media.giphy.com/media/Nhlkq5FnUxjGM/giphy.gif')
tamagotchi2 = Tamagotchi.create(name: 'Kuchipatchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://i.pinimg.com/originals/89/15/7b/89157b4b2d6675238f22ed519678c59e.png')
tamagotchi3 = Tamagotchi.create(name: 'Violetchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://www.pinclipart.com/picdir/big/176-1764473_trumpet-tamagotchi-friends-mametchi-clipart.png')
tamagotchi4 = Tamagotchi.create(name: 'Lovelitchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://www.stickpng.com/assets/images/5a2d8324b3c4622cbe359731.png')
tamagotchi5 = Tamagotchi.create(name: 'Gozarutchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://vignette.wikia.nocookie.net/tamagotchi/images/6/68/Wagashietchi-anime.png/revision/latest?cb=20130805082754')
tamagotchi6 = Tamagotchi.create(name: 'Mimitchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://vignette.wikia.nocookie.net/tamagotchi/images/a/ab/Sebiretchi_Large.png/revision/latest?cb=20110909104100')
tamagotchi7 = Tamagotchi.create(name: 'Sunnytchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://vignette.wikia.nocookie.net/tamagotchi/images/8/8d/Tamagotchi_blue.png/revision/latest?cb=20110906021758')
tamagotchi8 = Tamagotchi.create(name: 'Makiko', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://vignette.wikia.nocookie.net/tamagotchi/images/7/76/Omuretchi.PNG/revision/latest?cb=20110916043218')
tamagotchi9 = Tamagotchi.create(name: 'Furikotchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://vignette.wikia.nocookie.net/tamagotchi/images/e/e5/Capuselutchi.png/revision/latest?cb=20140607194315')
tamagotchi10 = Tamagotchi.create(name: 'Petipuchi', species: 'species1', happiness: 2, fullness:1, income: 3, image: 'https://vignette.wikia.nocookie.net/tamagotchi/images/9/98/Himetchi_anime.PNG/revision/latest?cb=20110814062623')

item1 = Item.create(name: 'ramen', effect: 2, category: 'food', price: 5, image: 'https://www.nicepng.com/png/full/106-1065906_kawaii-food-doodle-part-doodle-cute-cartoon-food.png')
item2 = Item.create(name: 'omurice', effect: 2, category: 'food', price: 5, image: 'https://www.pngkey.com/png/full/272-2726268_food-stickers-0010-layer16-cool-website-goodies-png.png')
item3 = Item.create(name: 'popcorn', effect: 2, category: 'food', price: 2, image: 'https://www.pngkit.com/png/full/20-209066_image-result-for-kawaii-popcorn-kawaii-popcorn.png')
item4 = Item.create(name: 'ice cream', effect: 2, category: 'food', price: 2, image: 'https://webstockreview.net/images/cone-clipart-cute-1.png')
item5 = Item.create(name: 'watermelon', effect: 2, category: 'food', price: 3, image: 'https://i.ya-webdesign.com/images/kawaii-fruit-png-6.png')
item6 = Item.create(name: 'fried egg', effect: 2, category: 'food', price: 1, image: 'https://images.vexels.com/media/users/3/185782/isolated/lists/0d4953ec9ed870a718fa485ef3ce8a8e-kawaii-cute-egg.png')

item7 = Item.create(name: 'beach ball', effect: 2, category: 'toy', price: 3, image: 'https://webstockreview.net/images/beachball-clipart-5.png')
item8 = Item.create(name: 'lego', effect: 2, category: 'toy', price: 5, image: 'https://pngimg.com/uploads/lego/lego_PNG47.png')
item9 = Item.create(name: 'dollhouse', effect: 2, category: 'toy', price: 7, image: 'https://3.bp.blogspot.com/-IP17PZjZoY8/TgVMknOkEhI/AAAAAAAABW0/KzoT9Oa9yRU/s1600/photo-361.gif')
item10 = Item.create(name: 'racecar', effect: 2, category: 'toy', price: 3, image: 'https://cdn.clipart.email/2dcc77d57ba189319fbfadd939083210_racing-car-clipart-png-image-free-download-searchpngcom_715-715.png')
item11 = Item.create(name: 'barbie', effect: 2, category: 'toy', price: 5, image: 'https://pngimg.com/uploads/barbie/barbie_PNG56.png')
item12 = Item.create(name: 'strawberries', effect: 2, category: 'food', price: 5, image: 'https://i.ya-webdesign.com/images/fruits-transparent-kawaii-5.png')


status1 = Status.create(user: user1, tamagotchi: tamagotchi1, happiness: 10, fullness: 10, money: 100, nickname:'GiGgLeZ')
status2 = Status.create(user: user1, tamagotchi: tamagotchi2, happiness: 10, fullness: 10, money: 100, nickname:'bOo bOoo')
status3 = Status.create(user: user2, tamagotchi: tamagotchi3, happiness: 10, fullness: 10, money: 100, nickname:'fReckLeZ')
status4 = Status.create(user: user2, tamagotchi: tamagotchi4, happiness: 10, fullness: 10, money: 100, nickname:'snOoOgie bUG')
status5 = Status.create(user: user3, tamagotchi: tamagotchi5, happiness: 10, fullness: 10, money: 100, nickname:'bUbbies')
status6 = Status.create(user: user3, tamagotchi: tamagotchi6, happiness: 10, fullness: 10, money: 100, nickname:'dimpLeZ')
status7 = Status.create(user: user4, tamagotchi: tamagotchi7, happiness: 10, fullness: 10, money: 100, nickname:'bBy cAkeZ')
status8 = Status.create(user: user4, tamagotchi: tamagotchi8, happiness: 10, fullness: 10, money: 100, nickname:'gOo gOo')
status9 = Status.create(user: user5, tamagotchi: tamagotchi9, happiness: 10, fullness: 10, money: 100, nickname:'iNdi')
status10 = Status.create(user: user5, tamagotchi: tamagotchi10, happiness: 10, fullness: 10, money: 100, nickname:'pickLey pOoOo')
status11 = Status.create(user: user5, tamagotchi: tamagotchi2, happiness: 10, fullness: 10, money: 100, nickname:'fluffZ')
status12 = Status.create(user: user5, tamagotchi: tamagotchi8, happiness: 10, fullness: 10, money: 100, nickname:'Button')

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

