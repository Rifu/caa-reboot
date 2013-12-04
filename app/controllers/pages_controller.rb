class PagesController < ApplicationController
  def index
    @event = Event.first
    @posts = Post.order("publish_date DESC").all
    @site = Site.where(:default_site => true).first
    date = Date.today-1
    @showing = Event.where("event_date >= ? AND event_type == ?", date, "showing").order("event_date ASC").limit(1).first
    @social = Event.where("event_date >= ? AND event_type == ?", date, "mangasocial").order("event_date ASC").limit(1).first
    @gamenight = Event.where("event_date >= ? AND event_type == ?", date, "gamenight").order("event_date ASC").limit(1).first
  end
end
