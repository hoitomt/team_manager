require_dependency "team_manager/application_controller"

module TeamManager
  class EventsController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:index]

    before_action :fetch_team

    def index
      @events = @team.events
    end

    def new
      @event = Event.new
    end

    def create
      @event = @team.events.build(event_params)
      if @event.save
        redirect_to team_events_path(@team)
      else
        render :new
      end
    end

    def edit
      @event = Event.find(params[:id])
    end

    def update
      @event = Event.find(params[:id])
      if @event.update_attributes(event_params)
        redirect_to team_events_path
      else
        render :edit
      end
    end

    def show
      @event = Event.find(params[:id])
    end

    private

    def event_params
      params.require(:event).permit(:team_id, :start_date, :stop_date, :description, :location, :venue)
    end

    def fetch_team
      @team = Team.find params[:team_id]
    end
  end
end
