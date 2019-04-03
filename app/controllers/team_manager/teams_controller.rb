require_dependency "team_manager/application_controller"

module TeamManager
  class TeamsController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:show]

    def index
      @teams = Team.all
    end

    def show
      @team = Team.find(params[:id])
      @players = @team.players
    end

    def new
      @team = Team.new
    end

    def create
      @team = Team.new(team_params.merge({active: true}))
      if @team.save
        redirect_to teams_path
      else
        render :new
      end
    end

    private

    def team_params
      params.require(:team).permit(:name, :coach, :year, :active)
    end
  end
end
