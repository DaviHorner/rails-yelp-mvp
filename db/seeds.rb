# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  rest = Restaurant.create(name: "#{Faker::Company.name}" + " " +  %w(Bistro Cafe Gastrobar).sample, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", phone_number: Faker::Number.number(9).to_i, category: Restaurant::TYPE.sample)

  5.times do
    rest.reviews.create(content: Faker::Lorem.paragraphs(1), rating: (0..5).to_a.sample)
  end
end
