FactoryBot.define do
  factory :team, class: TeamManager::Team do
    name { "Eau Claire Bucks" }
    coach  { "John Wooden" }
    year { '2019' }
  end
end
