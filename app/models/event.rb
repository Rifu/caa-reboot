class Event < ActiveRecord::Base
  attr_accessible :event_date, :event_location, :event_time, :event_type, :title, :event_image, :event_image_thin,
                  :event_start_time, :event_end_time
  has_attached_file :event_image
  has_attached_file :event_image_thin
end
