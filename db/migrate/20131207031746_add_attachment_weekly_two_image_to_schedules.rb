class AddAttachmentWeeklyTwoImageToSchedules < ActiveRecord::Migration
  def self.up
    change_table :schedules do |t|
      t.attachment :weekly_two_image
    end
  end

  def self.down
    drop_attached_file :schedules, :weekly_two_image
  end
end
