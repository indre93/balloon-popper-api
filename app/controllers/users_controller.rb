class UsersController < ApplicationController

  def index # GET /users
    users = User.all
    render json: users, :except => [:updated_at]
  end

  def create # POST /user
    user = User.create(user_params)
    render json: user, :except => [:updated_at]
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
