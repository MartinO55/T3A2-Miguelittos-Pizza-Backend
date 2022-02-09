# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Miguel", email: "miguel@test.com", password: "abcdef", password_confirmation: "abcdef", admin: true)

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

sauces = [
    ["Tomato", 5.00],
    ["BBQ", 5.00],
    ["Extra Tomato", 5.00],
    ["Extra BBQ", 5.00]
]

toppings = [
    ["Mozarella Cheese",1.20],
    ["Ham",2.00],
    ["Tomato", 1.50],
    ["Bacon", 2.20],remov
    ["Pineapple",3.00],
    ["Vegan Cheese", 3.50],
    ["Pepperoni", 4.30],
    ["Anchovies",0.50],
    ["Mushrooms",3.00],
    ["Prawns",3.33],
    ["BBQ Chicken",6.45]
]

# pizzas = [
#     ["Custom", 0],
#     ["Pepperoni", 6.99],
#     ["Hawaiian", 19.99],
#     ["BBQ Chicken", 19.88]
# ]

# ["Napolitana", 20.22],
#     ["Margherita", 20.99],
#     ["Cheese", 9.99],
#     ["Vegetarian", 27.99],
#     ["Meat", 32.40],
#     ["Supreme", 19.22],
#     ["Seafood", 19.11]

sides = [
    ["Garlic bread", 4.99],
    ["Cheesy Garlic Bread", 5.99],
    ["Vegan Garlic Bread", 7.99]
]

drinks = [
    ["Water",3.50],
    ["Mineral Water",4.50],
    ["Splite", 3.99],
    ["Pespi", 2.99],
    ["Koke", 4.50]
]

categories.each{|category|
    Category.create(name: category)
}

bases.each{|base|
    Product.create(name: base[0], price: base[1], category_id: 1, available: true)
}

sauces.each{|sauce|
    Product.create(name: sauce[0], price: sauce[1], category_id: 2, available: true)
}

toppings.each{|topping|
    Product.create(name: topping[0], price: topping [1], category_id: 3, available: true )
}

sides.each{|side|
    Product.create(name: side[0], price: side[1], category_id: 4, available: true)
}

drinks.each{|drink|
    Product.create(name: drink[0], price: drink[1], category_id: 5, available: true)
}

# pizzas.each{|pizza|
#     Pizza.create(name: pizza[0], price: pizza[1], user_id: 1, recipe: 0)
# }
# So I think this custom pizza needs to go. it keeps getting in the way on the front end
# Pizza.create(
#     name: "Custom",
#     price: 16.0,
#     base: "Traditional",
#     sauce: "Tomato",
#     toppings: {
#         "Mozarella Cheese" => 0,
#         "Ham" => 0,
#         "Tomato" => 0,
#         "Bacon" => 0,
#         "Pineapple" => 0,
#         "Vegan Cheese" => 0,
#         "Pepperoni" => 0,
#         "Anchovies" => 0,
#         "Mushrooms" => 0,
#         "Prawns" => 0,
#         "BBQ Chicken" => 0
#     },
#     user_id: 1
# )

Pizza.create(
    name: "Pepperoni",
    price: 22.50,
    description: "A traditional family favourite made with only the best pepperoni and mozarella cheese",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 0,
        "Tomato" => 0,
        "Bacon" => 0,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 1,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 0,
        "BBQ Chicken" => 0
    },
    user_id: 1
)

Pizza.create(
    name: "Hawaiian",
    price: 18.35,
    description: "The classic staple of kids parties everywhere made with ham, cheese and grated pineapple",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 1,
        "Tomato" => 0,
        "Bacon" => 0,
        "Pineapple" => 1,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 0,
        "BBQ Chicken" => 0
    },
    user_id: 1
)

Pizza.create(
    name: "BBQ Chicken",
    price: 19.85,
    description: "This amazing pizza has spicy BBQ sauce, BBQ chicken, bacon and Ham all topped with luscious melted mozarella cheese",
    base: "Traditional",
    sauce: "BBQ",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 1,
        "Tomato" => 0,
        "Bacon" => 1,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 0,
        "BBQ Chicken" => 1
    },
    user_id: 1
)

     Pizza.create(
     name: "Fruti di mare",
     price: 22.55,
     description: "A taste of the beachfront with anchovies and prawns under a blanket of the best mozarella cheese",
     base: "Traditional",
     sauce: "Tomato",
     toppings: {
         "Mozarella Cheese" => 1,
         "Ham" => 0,
         "Tomato" => 1,
         "Bacon" => 0,
         "Pineapple" => 0,
         "Vegan Cheese" => 0,
         "Pepperoni" => 0,
         "Anchovies" => 1,
         "Mushrooms" => 0,
         "Prawns" => 1,
         "BBQ Chicken" => 0
     },
     user_id: 1
 )

  Pizza.create(
     name: "Vegan Supreme",
     price: 17.33,
     description: "The Most ethical pizza anywhere all vegetarian ingredients topped with plant based cheese",
     base: "Thin",
     sauce: "Tomato",
     toppings: {
         "Mozarella Cheese" => 0,
         "Ham" => 0,
         "Tomato" => 1,
         "Bacon" => 0,
         "Pineapple" => 0,
         "Vegan Cheese" => 1,
         "Pepperoni" => 0,
         "Anchovies" => 0,
         "Mushrooms" => 1,
         "Prawns" => 0,
         "BBQ Chicken" => 0
     },
     user_id: 1
 )

 Pizza.create(
    name: "Margherita",
    price: 14.0,
    description: "Simple, but made with the freshest ingredients, and an Italian classic because of it",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 0,
        "Tomato" => 1,
        "Bacon" => 0,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 0,
        "BBQ Chicken" => 0
    },
    user_id: 1
)

Pizza.create(
    name: "Cheese",
    price: 10.55,
    description: "A masterpiece of simplicity and a timeless classic",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 0,
        "Tomato" => 0,
        "Bacon" => 0,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 0,
        "BBQ Chicken" => 0
    },
    user_id: 1
)

Pizza.create(
    name: "The Works",
    price: 36.99,
    description: "Can't decide? Don't worry, just get everything and worry about it later",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 1,
        "Tomato" => 1,
        "Bacon" => 1,
        "Pineapple" => 1,
        "Vegan Cheese" => 0,
        "Pepperoni" => 1,
        "Anchovies" => 1,
        "Mushrooms" => 1,
        "Prawns" => 1,
        "BBQ Chicken" => 1
    },
    user_id: 1
)

Pizza.create(
    name: "Mexicana",
    price: 19.0,
    description: "An exotic classic that showcases the best of Tex-Mex cuisine and ingredients",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 0,
        "Tomato" => 1,
        "Bacon" => 1,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 1,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 1,
        "BBQ Chicken" => 0
    },
    user_id: 1
)

Pizza.create(
    name: "Ham & Cheese",
    price: 18.66,
    description: "A classic combination to make the mouths of even the pickiest eaters water",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 1,
        "Tomato" => 1,
        "Bacon" => 0,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 0,
        "Prawns" => 0,
        "BBQ Chicken" => 0
    },
    user_id: 1
)

Pizza.create(
    name: "Nepalese",
    price: 19.99,
    description: "A high energy pizza from the mountains of nepal with mushrooms and chicken",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 0,
        "Tomato" => 0,
        "Bacon" => 0,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 1,
        "Prawns" => 0,
        "BBQ Chicken" => 1
    },
    user_id: 1
)

Pizza.create(
    name: "Capricosa",
    price: 16.0,
    description: "A traditional Italian classic that brings together the best of italian cooking and swedish taste",
    base: "Traditional",
    sauce: "Tomato",
    toppings: {
        "Mozarella Cheese" => 1,
        "Ham" => 1,
        "Tomato" => 0,
        "Bacon" => 0,
        "Pineapple" => 0,
        "Vegan Cheese" => 0,
        "Pepperoni" => 0,
        "Anchovies" => 0,
        "Mushrooms" => 1,
        "Prawns" => 0,
        "BBQ Chicken" => 0
    },
    user_id: 1
)
