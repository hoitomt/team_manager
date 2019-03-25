require 'validate_url'

module TeamManager
  class PlayerVideo < ApplicationRecord
    belongs_to :player

    validates :video_url, url: true

    default_scope { order(:created_at) }

    def display_url
      if video_url =~ /youtu\.be/
        video_url.gsub(/youtu\.be/, "www.youtube.com/embed")
      elsif video_url =~ /youtube\.com\/watch\?v=/
        episode_id = video_url.match(/v=(.*)/)[1]
        "https://www.youtube.com/embed/#{episode_id}"
      elsif video_url =~ /hudl\.com\/video/
        episode_path = video_url.match(/video\/(.*)/)[1]
        "//www.hudl.com/embed/video/#{episode_path}"
      else
        nil
      end
    end
  end
end
