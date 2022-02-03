class ProductsController < ApplicationController
    before_action :authenticate_user, except: []
    before_action :check_admin, only: [:new]
    
    def new
        @product = Product.create(product_params)
        if @product.errors.any? 
            render json: @product.errors, status: :unprocessable_entity
        else  
            render json: @product.transform_product, status: 201
        end 
    end
    
    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :available, :category_id)
    end

    def check_admin
        if current_user.admin == false
            render json: {error: "Unauthorized Action"}, status: 401
        end
    end
end
