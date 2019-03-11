class UsersController < ApplicationController
    def show
        @name = current_user.name
        @technologies = current_user.technologies.page(params[:page]).per(5).order("created_at DESC")
    end
end
