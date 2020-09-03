class Api::TeamsController < ApplicationController
  # before_action :authenticate_user

  def index
    @teams = current_user.teams
    # @teams = Team.all
    render "index.json.jb"
  end


  def create

    @total_war = 0

    pitcher = Player.find_by(id: params[:pitcher])
    pitcher.war
    @total_war += pitcher.war 
    catcher = Player.find_by(id: params[:catcher])
    catcher.war
    @total_war += catcher.war 
    first_base = Player.find_by(id: params[:first_base])
    first_base.war
    @total_war += first_base.war 
    second_base = Player.find_by(id: params[:second_base])
    second_base.war
    @total_war += second_base.war 
    third_base = Player.find_by(id: params[:third_base])
    third_base.war
    @total_war += third_base.war 
    shortstop = Player.find_by(id: params[:shortstop])
    shortstop.war
    @total_war += shortstop.war 
    left_field = Player.find_by(id: params[:left_field])
    left_field.war
    @total_war += left_field.war 
    center_field = Player.find_by(id: params[:center_field])
    center_field.war
    @total_war += center_field.war 
    right_field = Player.find_by(id: params[:right_field])
    right_field.war
    @total_war += right_field.war 

    @team = Team.new(

      name: params[:name],
      pitcher_id: params[:pitcher],
      catcher_id: params[:catcher],
      first_base_id: params[:first_base],
      second_base_id: params[:second_base],
      third_base_id: params[:third_base],
      shortstop_id: params[:shortstop],
      left_field_id: params[:left_field],
      center_field_id: params[:center_field],
      right_field_id: params[:right_field],
      user_id: current_user.id,
      total_war: @total_war
    )

    @team.save
    render 'show.json.jb'

  end
end