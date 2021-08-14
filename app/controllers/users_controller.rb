class UsersController < ApplicationController
  before_action :current_user

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    render json: @user
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
