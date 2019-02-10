require 'rails_helper'

describe TeamManager::Team do
  subject{ create(:team) }

  it 'creates the team' do
    expect(subject.name).to eq('Eau Claire Bucks')
  end
end
