class UpdatePlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :team_manager_players, :sports, :string
    add_column :team_manager_players, :extracurricular_activities, :text
    add_column :team_manager_players, :reference_quotes, :text
    add_column :team_manager_players, :basketball_history, :text
    add_column :team_manager_players, :miscellaneous_information, :text
  end
end
