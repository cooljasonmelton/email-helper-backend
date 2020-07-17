class ContactsController < ApplicationController

    def create
        
        user = User.find_by(id: params[:userId])
        user.contacts << Contact.create(name: params[:name], email: params[:email])
        render json: user, include: [:templates, :contacts]
    end 

end
