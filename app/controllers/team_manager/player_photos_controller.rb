require_dependency "team_manager/application_controller"

module TeamManager
  class PlayerPhotosController < ApplicationController
    before_action :fetch_team
    before_action :fetch_player

    def new
      @player_photo = PlayerPhoto.new
    end

    def create
      @player_photo = @player.player_photos.build(player_photo_params)
      if @player_photo.save
        flash[:notice] = "Photo has been uploaded"
        redirect_to team_player_media_path(@team, @player)
      else
        flash[:alert] = "There was an error uploading the photo: <br> #{@player_photo.errors.full_messages.join('<br>')}"
        render :new
      end
    end

    def edit
      @player_photo = PlayerPhoto.find(params[:id])
    end

    def update
      @player_photo = PlayerPhoto.find(params[:id])
      if @player_photo.update_attributes(player_photo_params)
        respond_to do |format|
          format.html {
            flash[:notice] = "Photo has been updated"
            redirect_to team_player_path(@team, @player)
          }
          format.json {
            render json: {success: true}, status: 200
          }
        end
      else
        respond_to do |format|
          format.html {
            flash[:alert] = "There was an error updating the photo: <br> #{@player_photo.errors.full_messages.join('<br>')}"
            render :edit
          }
          format.json {
            render json: {errors: @player_photo.errors.full_messages}, status: 200
          }
        end
      end
    end

    def destroy
      @player_photo = PlayerPhoto.find(params[:id])
      if @player_photo.destroy
        flash[:notice] = "Photo has been destroyed"
        redirect_to team_player_path(@team, @player)
      else
        flash[:notice] = "Photo could not be destroyed"
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

    def player_photo_params
      params.require(:player_photo).permit(:image, :caption, :home_page, :profile)
    end
  end
end
