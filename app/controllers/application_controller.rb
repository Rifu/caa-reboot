class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_defaults

  private
  def load_defaults
    @site = Site.where(:default_site => true).first
    if !@site.current_schedule.blank?
      @current_schedule = Schedule.find(@site.current_schedule)
    end
    date = Date.today-1
    @showing = Event.where("event_date >= ? AND event_type = ?", date, "showing").order("event_date ASC").limit(1).first
    @social = Event.where("event_date >= ? AND event_type = ?", date, "mangasocial").order("event_date ASC").limit(1).first
    @game_night = Event.where("event_date >= ? AND event_type = ?", date, "gamenight").order("event_date ASC").limit(1).first

    # Pull data from event if it exists; otherwise pull from default values
    # Set default values in the admin interface
    if @showing.blank?
      @showing_image = @site.default_showing_image.url
      @showing_date = "MON TBD"
      @showing_start_time = @site.default_showing_time
      @showing_end_time = @site.default_showing_end_time
      @showing_location = @site.default_showing_location
      @showing_title = @site.default_showing_description
    else
      @showing_image = @showing.event_image.url
      @showing_date = @showing.event_date
      @showing_start_time = @showing.event_start_time
      @showing_end_time = @showing.event_end_time
      @showing_location = @showing.event_location
      @showing_title = @showing.title
    end

    if @social.blank?
      @social_image = @site.default_social_image.url
      @social_date = "THU TBD"
      @social_start_time = @site.default_social_time
      @social_end_time = @site.default_social_end_time
      @social_location = @site.default_social_location
      @social_title = @site.default_social_description
    else
      @social_image = @social.event_image.url
      @social_date = @social.event_date
      @social_start_time = @social.event_start_time
      @social_end_time = @social.event_end_time
      @social_location = @social.event_location
      @social_title = @social.title
    end

    if @game_night.blank?
      @game_night_image = @site.default_game_night_image.url
      @game_night_date = "THU TBD"
      @game_night_start_time = @site.default_game_night_time
      @game_night_end_time = @site.default_game_night_end_time
      @game_night_location = @site.default_game_night_location
      @game_night_title = @site.default_game_night_description
    else
      @game_night_image = @game_night.event_image.url
      @game_night_date = @game_night.event_date
      @game_night_start_time = @game_night.event_start_time
      @game_night_end_time = @game_night.event_end_time
      @game_night_location = @game_night.event_location
      @game_night_title = @game_night.title
    end
  end
end
