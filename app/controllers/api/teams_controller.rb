class Api::TeamsController < ApplicationController
  # before_action :authenticate_user

  def index
    @teams = Team.all
    render "index.json.jb"
  end


  def create
    @team = Team.new(

      name: params[:name],
      pitcher_id: params[:pitcher_id],
      catcher_id: params[:catcher_id],
      first_base_id: params[:first_base_id],
      second_base_id: params[:second_base_id],
      third_base_id: params[:third_base_id],
      shortstop_id: params[:shortstop_id],
      left_field_id: params[:left_field_id],
      center_field_id: params[:center_field_id],
      right_field_id: params[:right_field_id],
      user_id: params[:user_id],
    )

    @team.save
    render 'show.json.jb'

  end
end