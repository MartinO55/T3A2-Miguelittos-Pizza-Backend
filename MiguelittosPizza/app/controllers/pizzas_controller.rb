class PizzasController < ApplicationController

    
    before_action :authenticate_user, except: [:index, :show]
    before_action :check_admin, except: [:index, :show]
    before_action :set_pizza, only: [:show, :update, :destroy]
    
    
    def index
        @pizzas = Pizza.all.map{|p| 
            p.transform_pizza
        }
        render json: @pizzas
    end
    
    def new
        @pizza = current_user.pizzas.create(pizza_params)
        if @pizza.errors.any? 
            render json: @pizza.errors, status: :unprocessable_entity
        else  
            render json: @pizza.transform_pizza, status: 201
        end 
    end
    
    def show 
        render json: @pizza.transform_pizza
    end

    def update
        @pizza.update(pizza_params)
        if @pizza.errors.any? 
            render json: @pizza.errors, status: :unprocessable_entity
        else  
            render json: @pizza.transform_pizza, status: 201
        end
    end

    def destroy
        @pizza.delete 
        render json: 204
    end



    private

    def pizza_params
        params.require(:pizza).permit(:name, :description, :price, :user_id, recipe: {})
    end

    def check_admin
        if current_user.admin == false
            render json: {error: "Unauthorized Access"}, status: 401
        end
    end

    def set_pizza
        begin
        @pizza = pizza.find(params[:id])
        rescue
            render json: {error: "Pizza not found"}, status: 404
        end 
    end
end
