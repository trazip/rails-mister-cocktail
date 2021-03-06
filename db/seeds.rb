# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# drinks_serialized = open(url).read
# drinks = JSON.parse(drinks_serialized)

# puts drinks
# drinks[element].each do |drink|
#   puts drink['strIngredient1']
# end

# my_array = [{ "strIngredient1" => "Cider" }, { "strIngredient1" => "Cider" }, { "strIngredient1" => "Cider" }]

# my_array.each do |element|
#   puts element.values
# end
# hash = { "strIngredient1" => "Cider" }

# puts hash["strIngredient1"]

# data = JSON.parse(serialized_data)
# data['drinks'].each do |ingredient|
#   puts "Printing #{ingredient['strIngredient1']}"
#   new_ingredient = Ingredient.new(
#     name: ingredient['strIngredient1']
#   )
#   new_ingredient.save!
# end

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_data = open(url).read
data = JSON.parse(serialized_data)
data['drinks'].each do |ingredient|
  puts "Printing #{ingredient['strIngredient1']}"
  new_ingredient = Ingredient.new(
    name: ingredient['strIngredient1']
  )
  new_ingredient.save!
end
