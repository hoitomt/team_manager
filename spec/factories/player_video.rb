FactoryBot.define do
  factory :player_video, class: TeamManager::PlayerVideo do
    player

    video_url { 'https://youtu.be/Yfi9nqA0MVU' }
    description { 'Test Video' }
  end
end
