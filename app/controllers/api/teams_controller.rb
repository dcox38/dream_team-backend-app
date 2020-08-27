class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render "index.json.jb"
  end
end