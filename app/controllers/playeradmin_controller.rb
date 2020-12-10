class PlayeradminController < ApplicationController
    def index
        @players = Player.all
    end

    def new
        @player = Player.new
    end

    def show
        @player = Player.find(params[:id])
    end

    def create
        @player = Player.new(player_params)
        
        if @player.save
            redirect_to playeradmin_index_path
        else
          render 'new'
        end
    end

    def edit
        @player = Player.find(params[:id])
    end

    def update
        @player = Player.find(params[:id])
 
        if @player.update(player_params)
            redirect_to playeradmin_path
        else
          render 'edit'
        end
    end

    def destroy
        @player = Player.find(params[:id])
        @player.destroy
     
        redirect_to playeradmin_index_path
    end

    private

    def player_params
        params.require(:player).permit(:firstname, :lastname, :emailaddress, :playertype)
    end
end
