class IdeasController < ApplicationController
    def index
        # this should be @ideas not @idea :)
        @ideas = Idea.all
    end
end
