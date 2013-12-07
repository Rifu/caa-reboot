class AddAttachmentWeeklyOneImageToSchedules < ActiveRecord::Migration
  def self.up
    change_table :schedules do |t|
      t.attachment :weekly_one_image
    end
  end

  def self.down
    drop_attached_file :schedules, :weekly_one_image
  end
end
