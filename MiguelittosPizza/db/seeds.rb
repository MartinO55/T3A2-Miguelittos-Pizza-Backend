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

pizzas = [
    "Hawaiian",
    "Napolitana",
    "Margherita",
    "Cheese",
    "Vegetarian",
    "Pepperoni",
    "Meat",
    "Supreme",
    "Seafood",
    "BBQ Chicken",
    'BBQ Beef'
]

categories.each{|category|
    Category.create(name: category)
}

pizzas.each{|pizza|
    Pizza.create(name: pizza)
}