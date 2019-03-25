class CreateTeamManagerPlayerVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :team_manager_player_videos do |t|
      t.integer :player_id
      t.string :video_url
      t.string :description

      t.timestamps
    end
  end
end
