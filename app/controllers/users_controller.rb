class UsersController < ApplicationController
  def create
    # let's make a user using the username and password from the params
    user = User.new(
      username: params[:username],
      password: params[:password],
    )
    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end

  end

  def login
    render json: User.first
  end

  private def user_params
    params.require(:user).permit(:username, :password)
  end
end
