class CreateTeamManagerSitePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :team_manager_site_photos do |t|
      t.string :image
      t.boolean :about_page
      t.text :caption

      t.timestamps
    end
  end
end
