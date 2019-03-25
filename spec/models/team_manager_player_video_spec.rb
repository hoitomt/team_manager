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

  describe '#display_url' do
    it 'is correct for YouTube address bar URL' do
      video = create :player_video, video_url: 'https://www.youtube.com/watch?v=vTdTJ9jysbo'
      expect(video.display_url).to eq 'https://www.youtube.com/embed/vTdTJ9jysbo'
    end

    it 'is correct for YouTube embed URL' do
      video = create :player_video, video_url: 'https://youtu.be/vTdTJ9jysbo'
      expect(video.display_url).to eq 'https://www.youtube.com/embed/vTdTJ9jysbo'
    end

    it 'is correct for Hudl address bar URL' do
      video = create :player_video, video_url: 'https://www.hudl.com/video/3/12097573/5c93b3f74797c30490d0236a'
      expect(video.display_url).to eq '//www.hudl.com/embed/video/3/12097573/5c93b3f74797c30490d0236a'
    end
  end
end

# http://www.hudl.com/v/2BEB7T
# http://www.hudl.com/v/29Nv6K
# <iframe src='//www.hudl.com/embed/video/2/70363/5a8cb361d21b510e7cf2a6dc' width='640' height='360' frameborder='0' allowfullscreen></iframe>
# http://www.hudl.com/v/2B0C5g
