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
    "Hawaiian","",19.99,
    "Napolitana","",20.22,
    "Margherita","",20.99,
    "Cheese","",9.99,
    "Vegetarian","",27.99,
    "Pepperoni","",6.99,
    "Meat","",32.40,
    "Supreme","",19.22,
    "Seafood","",19.11,
    "BBQ Chicken","",19.88,
    'BBQ Beef',"",19.33
]

categories.each{|category|
    Category.create(name: category)
}

pizzas.each{|pizza,description,price|
    Pizza.create(name: pizza, description: description, price: price)
}