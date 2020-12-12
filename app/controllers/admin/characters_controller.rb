class Admin::CharactersController < AdminController
    def new
        setup_character_lists
        @character = Character.new
    end

    def show
        @player = Player.find(params[:id])
    end

    def create
        @player = Player.find(session[:player_id])
        params[:player_id] = session[:player_id]
        puts "test"
        puts params
        @character = Character.new(character_params)
        @character.player_id = session[:player_id]
        if @character.save
            redirect_to admin_player_path(session[:player_id])
        else
            setup_character_lists
            render 'new'
        end
    end

    def character_params
        params.require(:character).permit(:name, :pronouns, :deity_id, :race_id, :characterclass_id, :player_id)
    end

    def setup_character_lists
        @player = Player.find(session[:player_id])
        @classes = Characterclass.select { |x| x.playeravailable == true }
        @races = Race.select { |x| x.playeravailable == true }
        @deities = Deity.select { |x| x.playeravailable == true }
    end
    
end
