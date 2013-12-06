class Schedule < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :site
  has_many :events
  attr_accessible :slug, :title, :event_ids
end
