require_dependency "team_manager/application_controller"

module TeamManager
  class TeamsController < ApplicationController
    def index
      @teams = Team.all
    end
  end
end
