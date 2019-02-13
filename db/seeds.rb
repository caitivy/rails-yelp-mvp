# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Restaurant.destroy_all


# this for testing
restaurantOne = Restaurant.create({name: 'Katz', address: '12 Main Street New York, New York', phone_number: "223.343.4542", category: 'french'})
restaurantTwo = Restaurant.create({name: 'Onza', address: '3 Rabi Khanina, Tel Aviv 6813731 Israel', phone_number: "72 3-648-6060", category: 'french'})
restaurantThree = Restaurant.create({name: 'Taj Mahal Restaurant', address: 'ul. "11-ti avgust" 11, 1520 Sofia Center, Sofia, Bulgaria', phone_number: '59 87 660 0776', category: 'french'})

review = Review.new({rating: 5, content: " Great traditional place!" })
review.restaurant = restaurantOne
review.save

review = Review.new({rating: 4, content: "המקום גדול אבל קטן" })
review.restaurant = restaurantTwo
review.save

review = Review.new({rating: 5, content: "Невероятно и вкусно" })
review.restaurant = restaurantThree
review.save
