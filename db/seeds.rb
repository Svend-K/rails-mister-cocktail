# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  cocktail = Cocktail.new(
    name: Faker::Cat.name
    # address: Faker::Address.city,
    # category:  Faker::Food.ingredient,
    # phone_number: Faker::PhoneNumber.cell_phone
  )
  cocktail.save
end

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }
