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
        # @user = User.find(params[:id])
        # if @user.update
        #     render json: @user
        # else    
        #     render json: @user.errors
        # end
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: { message: 'success'}
    end

    def login
        @user = User.find_by(username: params[:username])
        # if @user && @user.authenticate(params[:password])
        #     render json: @user
        # else 
        #     render json: {error: "Invalid username or password"}
        # end
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :first_name, :last_name)
    end

end
