class UsersController < ApplicationController
    # GET /users
    def index
      @users = User.page(params[:page]).per(5) # Adjust the number to set how many users per page
      render json: @users
    end
  
    # GET /users/:id
    def show
      @user = User.find(params[:id])
      render json: @user
    end
  end
  