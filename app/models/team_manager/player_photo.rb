module TeamManager
  class PlayerPhoto < ApplicationRecord
    mount_uploader :image, PlayerPhotoUploader

    belongs_to :player
  end
end
