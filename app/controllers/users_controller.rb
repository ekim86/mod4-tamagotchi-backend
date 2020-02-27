class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    render json: user
  end

  def login
    render json: User.first
  end

  private def user_params
    params.require(:user).permit(:username, :password)
  end
end
