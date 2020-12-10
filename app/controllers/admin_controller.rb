class AdminController < ApplicationController
    def index
        @players = Player.all
    end

    
end
