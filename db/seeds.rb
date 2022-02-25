# Reservation not implemented yet.

if Rails.env.development?
  Reservation.destroy_all
  Review.destroy_all
  Car.destroy_all
  User.destroy_all
  Category.destroy_all
end

oleg = User.create(username: "oleg", email: "a@a.a", password: "azerty", avatar: "https://i1.sndcdn.com/avatars-000469158501-b2adiy-t500x500.jpg")
sebastien = User.create(username: "sebastien", email: "b@b.b", password: "sebastien")
trump = User.create(username: "Trump", email: "c@c.c", password: "trump2022")
darth_vador = User.create(username: "Darth Vader", email: "d@d.d", password: "darthvader")

ferrari = Car.new(brand: "Ferrari", model: "F50", price: 1499, capacity: 2, occasion: "Show-off", description: "A magnificent car to impress any chick before (or after) a lovely evening in a fancy restaurant. Getting laid guarantee!", image: "https://carconfigurator.ferrari.com/assets/cars/portofinom/packages/default/car-ferrari-portofino-m_splash.jpg")
tank = Car.new(brand: "Tank", model: "T-14 Armata", price: 10_500, capacity: 3, occasion: "War", description: "A beast of technology. Ideal to invade any neighboring country. Putin would use it against Ukraine so... why not give it a try!? A little greedy in gasoline though.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Challenger2-Bergen-Hohne-Training-Area-2.jpg/1200px-Challenger2-Bergen-Hohne-Training-Area-2.jpg")
death_star = Car.new(brand: "Starkiller", model: "Death Star III", price: 54_990_000, capacity: 628_628, occasion: "War", description: "The one and only Death Star III fully functional (including super laser). Additional crew members available upon request. Z license required to operate it. Attention, wide space needed to park it.", image: "https://lumiere-a.akamaihd.net/v1/images/Death-Star-I-copy_36ad2500.jpeg")
porsche = Car.new(brand: "Porsche", model: "Carrera", price: 990, capacity: 2, occasion: "Show-off", description: "Brand new Porsche Carrera GT. Ideal for speed trip in nice and lovely countryside. Careful with the speed, trafic rules doesn't adapt to the car. It's the other way around.", image: "https://www.topgear.com/sites/default/files/2021/11/FL22_Mecum%20Kissimmee%202022_1994%20Porsche%20911%20Turbo.jpg")
skateboard = Car.new(brand: "Skateboard", model: "Skateboard", price: 25, capacity: 1, occasion: "Show-off", description: "Super Skateboard to ride the best ramps of any skatepark. Legend says that it belonged to Tony Hawk.", image: "https://www.skatedeluxe.com/blog/wp-content/uploads/2020/08/Skateboard-Cruiser-1.jpg")
dolorean = Car.new(brand: "DeLorean", model: "DMC-12", price: 99, capacity: 2, occasion: "Street race", description: "Old timer that has horse power under the hood! People says that it travels in time but has never been confirmed...", image: "https://sf2.autojournal.fr/wp-content/uploads/autojournal/2021/03/original.jpeg")

ferrari.user = oleg
porsche.user = oleg
tank.user = darth_vador
skateboard.user = darth_vador
death_star.user = darth_vador
dolorean.user = sebastien

ferrari.save!
porsche.save!
tank.save!
skateboard.save!
death_star.save!
dolorean.save!

review1 = Review.new(content: "Way to dangerous! I destroyed half of America by accident. I do not recommend.", rating: 0)
review2 = Review.new(content: "Best renting ever! Was delivered with full capacity. Also some crew were missing in the food & supplies deck. We had an amazing moment in space chasing aliens and destroying other planets. Highly recommend!", rating: 5)
review3 = Review.new(content: "One word: Marvelous! I got laid the first night thanks to this beauty", rating: 5)
review4 = Review.new(content: "Nice experience also it's not easy to pass the gear. Turrent is a bit oily. Although, I would recommend to have several of these to invade any serious country.", rating: 4)
review5 = Review.new(content: "Still looking how to travel in time...", rating: 1)

review1.car = death_star
review1.user = trump
review2.car = death_star
review2.user = darth_vador
review3.car = ferrari
review3.user = oleg
review4.car = tank
review4.user = sebastien
review5.car = dolorean
review5.user = oleg

review1.save!
review2.save!
review3.save!
review4.save!
review5.save!

fun = Category.create(name: "Fun")
logistic = Category.create(name: "Logistic")
military = Category.create(name: "Military")
minor = Category.create(name: "Minor")
miscellaneous = Category.create(name: "Miscellaneous")
old_timer = Category.create(name: "Old timer")
space = Category.create(name: "Space")
sport = Category.create(name: "Sport")
urban = Category.create(name: "Urban")

CarCategory.create(car: death_star, category: space)
CarCategory.create(car: tank, category: military)
CarCategory.create(car: ferrari, category: sport)
CarCategory.create(car: dolorean, category: old_timer)
CarCategory.create(car: skateboard, category: sport)
CarCategory.create(car: porsche, category: sport)
CarCategory.create(car: death_star, category: military)
CarCategory.create(car: death_star, category: logistic)
CarCategory.create(car: porsche, category: urban)
CarCategory.create(car: skateboard, category: urban)
CarCategory.create(car: skateboard, category: minor)
CarCategory.create(car: skateboard, category: miscellaneous)
CarCategory.create(car: tank, category: miscellaneous)
CarCategory.create(car: death_star, category: miscellaneous)
CarCategory.create(car: dolorean, category: fun)
CarCategory.create(car: skateboard, category: fun)
CarCategory.create(car: death_star, category: fun)
