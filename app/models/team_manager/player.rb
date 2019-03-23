module TeamManager
  class Player < ApplicationRecord
    belongs_to :team
  end
end
