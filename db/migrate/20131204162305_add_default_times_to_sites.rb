class AddDefaultTimesToSites < ActiveRecord::Migration
  def change
    add_column :sites, :default_showing_time, :time
    add_column :sites, :default_social_time, :time
    add_column :sites, :default_game_night_time, :time
  end
end
