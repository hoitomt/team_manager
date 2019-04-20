module TeamManager
  class Player < ApplicationRecord
    belongs_to :team
    has_many :player_videos
    has_many :player_photos

    validates :name, presence: true
    validates :number, presence: true
  end
end
