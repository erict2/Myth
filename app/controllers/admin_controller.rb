class AdminController < ApplicationController
    def index
        @skills = Skill.all
    end

    
end
