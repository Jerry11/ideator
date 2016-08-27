class IdeasController < ApplicationController
    def index
        # this should be @ideas not @idea :)
        @ideas = Idea.all
    end
    def create
        @ideas = Idea.create(idea_params)
        redirect_to root_path
    end
    
    private
    def idea_params
        params.require(:idea).permit(:description, :author)
    end
end
