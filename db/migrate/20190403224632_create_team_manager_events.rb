class CreateTeamManagerEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :team_manager_events do |t|
      t.integer :team_id
      t.date :start_date
      t.date :stop_date
      t.string :description
      t.string :location
      t.string :venue

      t.timestamps
    end
  end
end
