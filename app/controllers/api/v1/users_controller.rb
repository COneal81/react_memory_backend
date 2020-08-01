class Api::V1::UsersController < ApplicationController

    skip_before_action :authenticate, only: [:create]
    before_action :set_user, only: [:show, :update]
    before_action :authorize_user, only: [:update]

def create
    @user = User.create(user_params)
  
    if @user.valid?
      jwt = Auth.issue({user_id: @user.id})
      byebug
      render json: {user: UserSerializer.new(@user), jwt: jwt}, status: :created
      
    else
      render json: {error: "Invalid Email or Password!"}, status: :not_acceptable
    end
end

    def show
      render json: @user 
    end
    def profile
      @user = current_user
      render json: @user, status: 200
    end
    def update 
      if @user.update(user_params)
        render json: @user, status: 200
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def authorize_user
      render json: {}, status: :forbidden unless current_user == @user
    end
    
    def user_params
        params.require(:user).permit(:name,
                                     :user_email,
                                     :password,
                                     :family_member_email
                                    )
    end

end
