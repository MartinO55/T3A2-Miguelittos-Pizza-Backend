class UsersController < ApplicationController
    wrap_parameters false
    before_action :authenticate_user, except: [:create, :sign_in]

    def create
        @user = User.create(user_params)
        if @user.save
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {name: @user.name, jwt: auth_token.token}, status: :created
        else
            puts @user.errors
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def sign_in
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {name: @user.name, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Incorrect Email or Password"}
        end
    end

    def show
        @user = current_user
        if @user
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {name: @user.name, email: @user.email, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Something Went Wrong!"}, status: 500
        end
    end

    def update
        current_user.update(user_params)

        if current_user.save
            auth_token = Knock::AuthToken.new payload: {sub: current_user.id}
            render json: {name: current_user.name, jwt: auth_token.token}, status: 200
        else
            render json: current_user.errors, status: :unprocessable_entity
        end
    end

    def destroy
        current_user.destroy

        if current_user.destroy
            render json: {message: "Sucessfully Deleted"}, status: 200
        else
            render json: current_user.errors, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
