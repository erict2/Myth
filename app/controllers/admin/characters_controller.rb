class Admin::CharactersController < AdminController
    def new
        @player = Player.find(params[:playerid])
        @character = Player.new
    end

    def show
        @player = Player.find(params[:id])
    end


    
end