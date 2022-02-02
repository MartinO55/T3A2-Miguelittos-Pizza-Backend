# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
    "Bases",
    "Sauces",
    "Toppings",
    "Sides",
    "Drinks"
]

categories.each{|category|
    Category.create(name: category)
}
# ------------------------------------

bases = [
    ["Traditional", 5.00],
    ["Thin", 4.00],
    ["Pan", 5.00],
    ["Stuffed Crust", 7.00]
]