require_dependency "team_manager/application_controller"

module TeamManager
  class PlayersController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:show]

    before_action :fetch_team
    before_action :fetch_player, only: [:show, :edit, :update, :media]

    def show
      @profile_photo = @player.player_photos.where(profile: true).order(created_at: :asc).last
    end

    def new
      @player = Player.new
    end

    def create
      @player = @team.players.build(player_params)
      if @player.save
        redirect_to team_path(@team)
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @player.update_attributes(player_params)
        redirect_to team_player_path(@team, @player)
      else
        render :edit
      end
    end

    def media
    end

    private

    def fetch_team
      @team = Team.find(params[:team_id])
    end

    def fetch_player
      @player = Player.find(params[:id] || params[:player_id])
    end

    def player_params
      params.require(:player).permit(:team_id,
        :name, :number, :height, :position,
        :school, :year, :athletic_accomplishments,
        :colleges_interested, :gpa, :quote)
    end
  end
end


