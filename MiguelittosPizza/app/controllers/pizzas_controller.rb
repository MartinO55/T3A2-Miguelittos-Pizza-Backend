class PizzasController < ApplicationController
    def index
        # @pizza = Pizza.find_by_name("Pepperoni")
        # render json: @pizza

        @toppings = Product.where(category_id: 3)
        render json: @toppings
    end
end
