class IdeasController < ApplicationController
    def index
        # this should be @ideas not @idea :)
        @ideas = Idea.all
    end
    
    def create
        @idea = Idea.create(idea_params)
        redirect_to root_path
    end
    
    def edit
        @ideas = Idea.find(params[:id])
    end
    
    def update
         @ideas = Idea.create(idea_params)
         if @idea.update(idea_params)
             redirect_to root_path
        else
            redirect_to edit_idea_path(params[:id])
        end
    end
    private
    def idea_params
        params.require(:idea).permit(:description, :author)
    end
end
