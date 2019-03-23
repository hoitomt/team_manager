class CreateTeamManagerPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_manager_players do |t|
      t.integer :team_id
      t.string :name
      t.integer :number
      t.string :height
      t.string :position
      t.string :school
      t.string :year
      t.text :athletic_accomplishments
      t.text :colleges_interested
      t.string :gpa
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
