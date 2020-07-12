class AuthController < ApplicationController

    def create
        user = User.find_by(email: params[:email], password_digest: params[:password])
        if user
            render json: user, include: [:templates, :contacts]
        else
            render json: { error: 'Invalid credentials.'}, status: 401
        end
    end 
end
