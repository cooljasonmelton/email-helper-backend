class UsersController < ApplicationController
    def index
        render json: User.all, include: [:templates, :contacts]
    end 

    def profile 
        user = User.find_by(email: params[:email], password_digest: params[:password])
        if user
            render json: user, include: [:templates, :contacts]
        else
            render json: { error: 'Invalid credentials.'}, status: 401
        end
    end 

    def show

    end 


end
