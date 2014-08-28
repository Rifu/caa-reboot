# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Site.create(title: 'CAA', default_site: true, 
            default_showing_time: Time.now, 
            default_showing_end_time: Time.now,
            default_showing_location: 'TBD',
            default_showing_description: 'TBD',
            default_social_time: Time.now, 
            default_social_end_time: Time.now,
            default_social_location: 'TBD',
            default_social_description: 'TBD', 
            default_game_night_time: Time.now, 
            default_game_night_end_time: Time.now,
            default_game_night_location: 'TBD',
            default_game_night_description: 'TBD',)
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')