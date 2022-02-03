class ProductsController < ApplicationController
    before_action :authenticate_user, except: [:index, :show]
    before_action :set_product, only: [:show, :update, :destroy]
    before_action :check_admin, only: [:new]
    
    def index
        @products = Product.all.map{|p| 
            p.transform_product
        }
        render json: @products
    end
    
    def new
        @product = Product.create(product_params)
        if @product.errors.any? 
            render json: @product.errors, status: :unprocessable_entity
        else  
            render json: @product.transform_product, status: 201
        end 
    end
    
    def show 
        render json: @product.transform_product
    end 

    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :available, :category_id)
    end

    def set_product
        begin
        @product = Product.find(params[:id])
        rescue
            render json: {error: "Product not found"}, status: 404
        end 
    end

    def transform_all
        
    end
end
