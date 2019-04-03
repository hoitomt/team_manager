module TeamManager
  class Event < ApplicationRecord
    belongs_to :team

    def start_date_display
      self.start_date.strftime("%-m/%d")
    end

    def stop_date_display
      self.stop_date.strftime("%-m/%d")
    end
  end
end
