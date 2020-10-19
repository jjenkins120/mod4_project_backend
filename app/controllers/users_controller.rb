class UsersController < ApplicationController
    
    def index
        @users = User.all 
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update
            render json: @user
        else    
            render json: @user.errors
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: { message: 'success'}
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :first_name, :last_name)
    end

end
