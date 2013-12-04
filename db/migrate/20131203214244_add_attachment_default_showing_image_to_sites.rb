class AddAttachmentDefaultShowingImageToSites < ActiveRecord::Migration
  def self.up
    change_table :sites do |t|
      t.attachment :default_showing_image
      t.attachment :default_social_image
      t.attachment :default_game_night_image
      t.attachment :default_carousel_one_image
      t.attachment :default_carousel_two_image
      t.attachment :default_carousel_three_image
    end
  end

  def self.down
    drop_attached_file :sites, :default_showing_image
    drop_attached_file :sites, :default_social_image
    drop_attached_file :sites, :default_game_night_image
    drop_attached_file :sites, :default_carousel_one_image
    drop_attached_file :sites, :default_carousel_two_image
    drop_attached_file :sites, :default_carousel_three_image
  end
end
