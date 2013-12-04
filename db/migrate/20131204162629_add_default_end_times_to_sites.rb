class AddDefaultEndTimesToSites < ActiveRecord::Migration
  def change
    add_column :sites, :default_showing_end_time, :time
    add_column :sites, :default_social_end_time, :time
    add_column :sites, :default_game_night_end_time, :time
  end
end
