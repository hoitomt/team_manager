module TeamManager
  class Event < ApplicationRecord
    belongs_to :team

    validates :start_date, presence: true
    validates :description, presence: true

    def start_date_display
      start_date.strftime("%-m/%d") if start_date
    end

    def stop_date_display
      stop_date.strftime("%-m/%d") if stop_date
    end
  end
end
