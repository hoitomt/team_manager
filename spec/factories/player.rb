FactoryBot.define do
  factory :player, class: TeamManager::Player do
    team

    name { 'Stephen Curry' }
    position { 'PG' }
    year { '2019' }
    height { "6'2\""}
  end
end
