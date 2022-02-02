class UsersController < ApplicationController
    wrap_parameters false

    def create
        @user = User.create(user_params)
        if @user.save
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {name: @user.name, jwt: auth_token.token}, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def update

    end

    def destroy

    end

    private
    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
