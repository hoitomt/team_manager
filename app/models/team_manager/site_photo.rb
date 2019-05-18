module TeamManager
  class SitePhoto < ApplicationRecord
    mount_uploader :image, SitePhotoUploader
  end
end
