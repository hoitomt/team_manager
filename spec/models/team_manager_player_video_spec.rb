require 'rails_helper'

describe TeamManager::Team do
  subject{ build :player_video  }

  it 'creates the player' do
    expect(subject.description).to eq('Test Video')
  end

  describe 'video_url validation' do
    it 'is valid' do
      expect(subject.valid?).to eq true
    end

    it 'is invalid with bad url' do
      video = build :player_video, video_url: 'bad'
      expect(video.valid?).to eq false
    end
  end
end
