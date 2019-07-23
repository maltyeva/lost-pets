# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

species = %w(Dog Cat Rabbit)


Pet.delete_all if Rails.env.development?

10.times do
  Pet.create!(species: species.sample,
              location: Faker::Address.city,
              found_on: Faker::Date.between(2.days.ago, Date.today),
              description: Faker::Quotes::Shakespeare.hamlet_quote)
end

puts "Created #{Pet.count} pets"
