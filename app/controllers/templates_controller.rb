class TemplatesController < ApplicationController

    def create
        user = User.find_by(id: params[:userId])
        user.templates << Template.create(name: params[:name], subject: params[:subject], body: params[:body])
        render json: user, include: [:templates, :contacts]
    end

    def update
        user = User.find_by(id: params[:userId])
        template = Template.find_by(id: params[:id])
        template.update(template_params)
        render json: user, include: [:templates, :contacts]
    end

    def destroy
        template = Template.find_by(id: params[:id])
        user = User.find_by(id: template.user_id)
        template.destroy
        render json: user, include: [:templates, :contacts]
    end

    private
    def template_params
        params.require(:template).permit(:name, :subject, :body)
    end

end
