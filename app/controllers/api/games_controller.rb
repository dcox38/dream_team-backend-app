class Api::GamesController < ApplicationController
  def index
    @games = Game.all
    render "index.json.jb"
  end

  def create

    # @winner_user_id = []

    # if 




    @game = Game.new(

      player_1_user_id: 


    )



  end
  



end
