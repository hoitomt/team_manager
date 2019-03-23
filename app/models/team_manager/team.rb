module TeamManager
  class Team < ApplicationRecord
    has_many :players

    scope :active, -> { where(active: true) }
  end
end
