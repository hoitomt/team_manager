# This migration comes from team_manager (originally 20190210180423)
class CreateTeamManagerTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :team_manager_teams do |t|
      t.string :name
      t.string :coach
      t.string :year
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
