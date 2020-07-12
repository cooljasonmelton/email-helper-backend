class UsersController < ApplicationController
    def index
        render json: User.all, include: [:templates, :contacts]
    end 

    def show
        user = User.find_by(params[:email])
        if user
            render json: user, include: [:templates, :contacts]
        else
            render json: { error: 'Invalid credentials.'}, status: 401
        end
    end 


end
