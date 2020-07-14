class TemplatesController < ApplicationController

    def create
        p params
        user = User.find_by(id: params[:userId])
        user.templates << Template.create(name: params[:name], subject: params[:subject], body: params[:body])
        render json: user, include: [:templates, :contacts]
    end

    private
    def getTemplateParams
    end

end
