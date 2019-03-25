require 'validate_url'

module TeamManager
  class PlayerVideo < ApplicationRecord
    belongs_to :player

    validates :video_url, url: true
  end
end
