class Api::V1::UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.save
            render json: user
        else 
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end


    private 
    
    def user_params
        params.require(:user).permit(:name,
                                     :user_email,
                                     :password,
                                     :family_member_email
                                    )
    end



    
 
end
