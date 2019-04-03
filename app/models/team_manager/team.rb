module TeamManager
  class Team < ApplicationRecord
    has_many :players
    has_many :events

    scope :active, -> { where(active: true) }

  end
end
