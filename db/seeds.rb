# Reviews not implemented yet.


if Rails.env.development?
  # Reservation.destroy_all
  # Reviews.destroy_all
  Car.destroy_all
  User.destroy_all
  # Category.destroy_all
end

@oleg = User.create(username: "@", email: "a@a.a", password: "azerty")
@sebastien = User.create(username: "sebastien", email: "b@b.b", password: "sebastien")
@trump = User.create(username: "Trump", email: "c@c.c", password: "trump2022")
@darth_vador = User.create(username: "Darth Vader", email: "d@d.d", password: "darthvader")

@ferrari = Car.new(brand: "Ferrari", model: "F50", price: 1499, capacity: 2, occasion: "Show-off", description: "A magnificent car to impress any chick before (or after) a lovely evening in a fancy restaurant. Getting laid guarantee!")
@tank = Car.new(brand: "Tank", model: "T-14 Armata", price: 10_500, capacity: 3, occasion: "War", description: "A beast of technology. Ideal to invade any neighboring country. Putin would use it against Ukraine so... why not give it a try!? A little greedy in gasoline though.")
@death_star = Car.new(brand: "Starkiller", model: "Death Star III", price: 54_990_000, capacity: 628_628, occasion: "War", description: "The one and only Death Star III fully functional (including super laser). Additional crew members available upon request. Z license required to operate it. Attention, wide space needed to park it.")
@porsche = Car.new(brand: "Porsche", model: "Carrera", price: 990, capacity: 2, occasion: "Show-off", description: "Brand new Porsche Carrera GT. Ideal for speed trip in nice and lovely countryside. Careful with the speed, trafic rules doesn't adapt to the car. It's the other way around.")
@skateboard = Car.new(brand: "Skateboard", model: "Skateboard", price: 25, capacity: 1, occasion: "Show-off", description: "Super Skateboard to ride the best ramps of any skatepark. Legend says that it belonged to Tony Hawk.")
@dolorean = Car.new(brand: "DeLorean", model: "DMC-12", price: 99, capacity: 2, occasion: "Street race", description: "Old timer that has horse power under the hood! People says that it travels in time but has never been confirmed...")

@ferrari.user = @oleg
@porsche.user = @oleg
@skateboard.user = @darth_vador
@death_star.user = @darth_vador
@dolorean.user = @sebastien

@ferrari.save!
@porsche.save!
@skateboard.save!
@death_star.save!
@dolorean.save!

# @review1 = Review.new(content: "Way to dangerous! I destroyed half of America by accident. I do not recommend.", rating: 0)
# # @review2 = Review.new(content: "Best renting ever! Was delivered with full capacity. Also some crew were missing in the food & supplies deck. We had an amazing moment in space chasing aliens and destroying other planets. Highly recommend!", rating: 5)
# @review3 = Review.new(content: "One word: Marvelous! I got laid the first night thanks to this beauty", rating: 5)
# @review4 = Review.new(content: "Nice experience also it's not easy to pass the gear. Turrent is a bit oily. Although, I would recommend to have several of these to invade any serious country.", rating: 4)
# # @review5 = Review.new(content: "Still looking how to travel in time...")

# @review1.car = @death_star
# @review1.user = @trump
# # @review2.car = @death_star
# # @review2.user = @darth_vador
# @review3.car = @ferrari
# @review3.user = @oleg
# @review4.car = @tank
# @review4.user = @sebastien
# # @review5.car = @dolorean
# # @review5.user = @oleg

# @review1.save!
# # @review2.save!
# @review3.save!
# @review4.save!
# # @review5.save!

p Car.all
p User.all
# p Review.all
