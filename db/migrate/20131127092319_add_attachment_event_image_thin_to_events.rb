class AddAttachmentEventImageThinToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :event_image_thin
    end
  end

  def self.down
    drop_attached_file :events, :event_image_thin
  end
end
