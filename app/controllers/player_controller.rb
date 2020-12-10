class PlayerController < ApplicationController
    def index
        #session[:playerid] = 2
        #@player = Player.find(session[:playerid])
        @player = Player.find_by(firstname: 'Jane')
    end
end