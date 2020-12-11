class Admin::CharactersController < AdminController
    def new
        @player = Player.find(params[:playerid])
        @classes = CharacterClass.select { |x| x.playeravailable == true }
        @races = Race.select { |x| x.playeravailable == true }
        @deities = Deity.select { |x| x.playeravailable == true }
        @character = Player.new
    end

    def show
        @player = Player.find(params[:id])
    end


    
end