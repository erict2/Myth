class Admin::CharactersController < AdminController
    def index
        @characters = Character.all
        @players = Player.all
    end

    def new
        setup_character_lists
        @character = Character.new
    end

    def show
        @player = Player.find(session[:player_id])
        @character = Character.find(params[:id])
    end

    def create
        @character = Character.new(character_params)
        @character.player_id = session[:player_id]
        if @character.save
            redirect_to admin_player_path(session[:player_id])
        else
            setup_character_lists
            render 'new'
        end
    end

    def edit
        @character = Character.find(params[:id])
        @character.player_id = session[:player_id]
        setup_character_lists
    end

    def update
        @character = Character.find(params[:id])
 
        if @character.update(character_params)
            redirect_to admin_character_path(@character)
        else
          render 'edit'
        end
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy
     
        redirect_to admin_player_path(session[:player_id])
    end
    private

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
