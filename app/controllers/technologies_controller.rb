class TechnologiesController < ApplicationController
  
   before_action :authenticate_user!
   before_action :move_to_index, except: :index
   
    def index #Top pageへのアクセス
        @technologies = Technology.includes(:user).order("created_at DESC").page(params[:page]).per(10)
        @technologies_group = []
        users = Group.find(current_user.group_id).users
        users.each do |user|
            tech = user.technologies
            @technologies_group << tech
        end

        @technologies_group = @technologies_group.flatten
        
    end

    def new
    end
    
    def create
        Technology.create(product: technology_params[:product], summary: technology_params[:summary], detail: technology_params[:detail], feature: technology_params[:feature], consideration: technology_params[:consideration], usecase: technology_params[:usecase], url: technology_params[:url], drive: technology_params[:drive], note: technology_params[:note], user_id: current_user.id)
    end
    
    def destroy
        technology = Technology.find(params[:id])
        if technology.user_id == current_user.id
            technology.destroy
        end
    end
    
    def edit
        @technology = Technology.find(params[:id])
    end

    def update
        technology = Technology.find(params[:id])
        if technology.user_id == current_user.id
            technology.update(technology_params)
        end
    end
    
    private
    def technology_params
        params.permit(:product, :summary, :detail, :feature, :consideration, :usecase, :url, :drive, :note)
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
end
