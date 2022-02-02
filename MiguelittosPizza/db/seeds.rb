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

bases = [
    ["Traditional", 5.00],
    ["Thin", 4.00],
    ["Pan", 5.00],
    ["Stuffed Crust", 7.00]
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

bases.each{|base|
    Product.create(name: base[0], price: base[1], category_id: 1, available: true)
}

pizzas.each{|pizza|
    Pizza.create(name: pizza)
}

