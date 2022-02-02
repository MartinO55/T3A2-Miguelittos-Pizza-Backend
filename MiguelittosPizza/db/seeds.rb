# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Miguel", password: "abcdef", password_confirmation: "abcdef")

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

sides = [
    ["Garlic bread", 4.99],
    ["Cheesy Garlic Bread", 5.99],
    ["Vegan Garlic Bread", 7.99]
]

pizzas = [
    ["Hawaiian",19.99],
    ["Napolitana",20.22],
    ["Margherita",20.99],
    ["Cheese",9.99],
    ["Vegetarian",27.99],
    ["Pepperoni",6.99],
    ["Meat",32.40],
    ["Supreme",19.22],
    ["Seafood",19.11],
    ["BBQ Chicken",19.88],
    ['BBQ Beef',19.33]
]

categories.each{|category|
    Category.create(name: category)
}

bases.each{|base|
    Product.create(name: base[0], price: base[1], category_id: 1, available: true)
}

sides.each{|side|
    Product.create(name: sides[0], price: sides[1], category_id: 4, available: true)
}

pizzas.each{|pizza|
    Pizza.create(name: pizza[0], price: pizza[1], user_id: 1)
}
