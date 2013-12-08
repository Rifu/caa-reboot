class Schedule < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :site
  has_many :events
  attr_accessible :slug, :title, :event_ids, :weekly_one,
                  :weekly_one_image, :weekly_two, :weekly_two_image,
                  :marathon_schedule
  has_attached_file :weekly_one_image
  has_attached_file :weekly_two_image
end
