class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.string :default_showing_location
      t.string :default_showing_description
      t.string :default_social_location
      t.string :default_social_description
      t.string :default_game_night_location
      t.string :default_game_night_description
      t.string :carousel_one_href
      t.string :carousel_two_href
      t.string :carousel_three_href
      t.boolean :default_site, :default => false

      t.timestamps
    end
  end
end
