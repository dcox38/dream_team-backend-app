class Api::GamesController < ApplicationController
  def index
    @games = Game.all
    render "index.json.jb"
  end

  def create

    team_one_total_war = Team.find_by(id: params[:team_one_id]).total_war
    team_two_total_war = Team.find_by(id: params[:team_two_id]).total_war


    if team_one_total_war > team_two_total_war
      winner_user_id = Team.find_by(id: params[:team_one_id]).user_id
    else
      winner_user_id = Team.find_by(id: params[:team_two_id]).user_id
    end

    # winner_name = Team.find_by(id: params[:winner_user_id]).name

    @game = Game.new(

      user_one_war: team_one_total_war,
      user_two_war: team_two_total_war,
      winner_user_id: winner_user_id,
      # winner_name: winner_name
    )
    @game.save
    render "show.json.jb"
  end
end
