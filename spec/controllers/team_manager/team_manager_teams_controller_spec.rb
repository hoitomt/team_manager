require 'rails_helper'

RSpec.describe TeamManager::TeamsController do
  routes { TeamManager::Engine.routes }

  it 'lists the teams' do
    get :index
    expect(response.status).to be 200
  end
end
