class ContactsController < ApplicationController

    def create
        user = User.find_by(id: params[:userId])
        user.contacts << Contact.create(name: params[:name], email: params[:email])
        render json: user, include: [:templates, :contacts]
    end 

    def update
        contact = Contact.find_by(id: params[:id])
        user = User.find_by(id: contact.user_id)
        contact.update(name: params[:name], email: params[:email])
        render json: user, include: [:templates, :contacts]
    end 

    def destroy
        contact = Contact.find_by(id: params[:id])
        user = User.find_by(id: contact.user_id)
        contact.destroy
        render json: user, include: [:templates, :contacts]
    end 

end
