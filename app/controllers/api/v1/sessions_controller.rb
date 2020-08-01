class Api::V1::SessionsController < ApplicationController
    skip_before_action :authenticate, only: [:create]


  def create
    @user = User.find_by(user_email: user_login_params[:user_email])
  
    if @user && @user.authenticate(user_login_params[:password])
        byebug
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end


  private

  def user_login_params
    params.require(:auth).permit(:user_email, :password)
  end
end