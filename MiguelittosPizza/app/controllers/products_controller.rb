class ProductsController < ApplicationController
    before_action :authenticate_user, except: [:index, :show, :customize]
    before_action :check_admin, except: [:index, :show, :customize]
    before_action :set_product, only: [:show, :update, :destroy]
    
    
    def index
        @products = Product.all.map{|p| 
            p.transform_product
        }
        render json: @products
    end

    def customize
        @pizza = Pizza.find(params[:id])
        @products = Product.all.map{|p| 
            p.transform_product
        }
        render json: [@products, @pizza]
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

    def update
        @product.update(product_params)
        if @product.errors.any? 
            render json: @product.errors, status: :unprocessable_entity
        else  
            render json: @product.transform_product, status: 201
        end
    end

    def destroy
        @product.delete 
        render json: 204
    end



    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :available, :category_id)
    end

    def check_admin
        if current_user.admin == false
            render json: {error: "Unauthorized Access"}, status: 401
        end
    end

    def set_product
        begin
        @product = Product.find(params[:id])
        rescue
            render json: {error: "Product not found"}, status: 404
        end 
    end

end
