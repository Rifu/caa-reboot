class Site < ActiveRecord::Base
  attr_accessible :carousel_one_href, :carousel_three_href, :carousel_two_href, 
                  :default_game_night_description, :default_game_night_location, 
                  :default_showing_description, :default_showing_location, 
                  :default_site, :default_social_description, 
                  :default_social_location, :title, :default_showing_image,
                  :default_social_image, :default_game_night_image,
                  :default_carousel_one_image, :default_carousel_two_image,
                  :default_carousel_three_image, :carousel_one_title,
                  :carousel_two_title, :carousel_three_title, :show_carousel,
                  :default_showing_time, :default_showing_end_time, 
                  :default_social_time, :default_social_end_time, 
                  :default_game_night_time, :default_game_night_end_time, :current_schedule

  has_attached_file :default_showing_image
  has_attached_file :default_social_image
  has_attached_file :default_game_night_image
  has_attached_file :default_carousel_one_image
  has_attached_file :default_carousel_two_image
  has_attached_file :default_carousel_three_image

  has_one :schedule
end
