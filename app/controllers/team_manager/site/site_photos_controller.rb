require_dependency "team_manager/application_controller"

module TeamManager::Site
  class SitePhotosController < ::ApplicationController
    def index
      @site_photos = TeamManager::SitePhoto.all
    end

    def new
      @site_photo = TeamManager::SitePhoto.new
    end

    def create
      @site_photo = TeamManager::SitePhoto.new(site_photo_params)
      unless site_photo_params[:image]
        flash[:alert] = "Please select an image to upload"
        render :new
        return
      end
      if @site_photo.save
        flash[:notice] = "Photo has been uploaded"
        redirect_to site_site_photos_path
      else
        flash[:alert] = "There was an error uploading the photo: <br> #{@site_photo.errors.full_messages.join('<br>')}"
        render :new
      end
    end

    def edit
      @site_photo = TeamManager::SitePhoto.find(params[:id])
    end

    def update
      @site_photo = TeamManager::SitePhoto.find(params[:id])
      if @site_photo.update_attributes(site_photo_params)
        respond_to do |format|
          format.html {
            flash[:notice] = "Photo has been updated"
            redirect_to site_site_photos_path
          }
          format.json {
            render json: {success: true}, status: 200
          }
        end
      else
        respond_to do |format|
          format.html {
            flash[:alert] = "There was an error updating the photo: <br> #{@site_photo.errors.full_messages.join('<br>')}"
            render :edit
          }
          format.json {
            render json: {errors: @site_photo.errors.full_messages}, status: 200
          }
        end
      end
    end

    def destroy
      @site_photo = TeamManager::SitePhoto.find(params[:id])
      if @site_photo.destroy
        flash[:notice] = "Photo has been destroyed"
        redirect_to site_site_photos_path
      else
        flash[:notice] = "Photo could not be destroyed"
        redirect_to site_site_photos_path
      end
    end

    private
    def site_photo_params
      params.require(:site_photo).permit(:image, :caption, :about_page)
    end
  end
end
