class Api::TeamsController < ApplicationController
  # before_action :authenticate_user

  def index
    @teams = current_user.teams
    render "index.json.jb"
  end


  def create
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
      user_id: current_user.id
    )

    @team.save
    render 'show.json.jb'

  end
end