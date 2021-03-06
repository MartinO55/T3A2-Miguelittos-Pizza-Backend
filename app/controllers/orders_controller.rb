class OrdersController < ApplicationController
    before_action :authenticate_user
    before_action :check_admin, except: [:show, :new]
    before_action :set_order, only: [:show, :update, :destroy]
    
    
    def index
        @orders = Order.where(complete: false).map{|p| 
            p.transform_order
        }
        render json: @orders
    end
    
    def new
        @order = current_user.orders.create(order_params)
        if @order.errors.any? 
            render json: @order.errors, status: :unprocessable_entity
        else  
            render json: @order.transform_order, status: 201
        end 
    end
    
    def show 
        render json: @order.transform_order
    end

    def update
        @order.update(order_params)
        if @order.errors.any? 
            render json: @order.errors, status: :unprocessable_entity
        else  
            render json: @order.transform_order, status: 201
        end
    end

    def destroy
        @order.delete 
        render json: 204
    end



    private

    def order_params
        params.require(:order).permit(:user_id, :complete, pizza: [:name, :base, :sauce, toppings: {}], side: [], drink: [])
    end

    def check_admin
        if current_user.admin == false
            render json: {error: "Unauthorized Access"}, status: 401
        end
    end

    def set_order
        begin
        @order = Order.find(params[:id])
        rescue
            render json: {error: "order not found"}, status: 404
        end 
    end
end

