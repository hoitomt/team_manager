require_dependency "team_manager/application_controller"

module TeamManager
  class PlayerVideosController < ApplicationController
    before_action :fetch_team
    before_action :fetch_player

    def create
      @player_video = @player.player_videos.build(player_video_params)
      if @player_video.save
        flash[:notice] = "Video has been uploaded"
        redirect_to team_player_path(@team, @player)
      else
        flash[:alert] = "There was an error uploading the video: #{@player_video.errors.full_messages}"
        redirect_to team_player_path(@team, @player)
      end
    end

    private

    def fetch_team
      @team = Team.find(params[:team_id])
    end

    def fetch_player
      @player = Player.find(params[:player_id])
    end

    def player_video_params
      params.require(:player_video).permit(:video_url, :description)
    end
  end
end
