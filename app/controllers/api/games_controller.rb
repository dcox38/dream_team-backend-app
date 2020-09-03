class Api::GamesController < ApplicationController
  def index
    @games = Game.all
    render "index.json.jb"
  end

  def create
    @game = Game.all
  end
  



end
