class PagesController < ApplicationController
  def index
    @event = Event.first
    @posts = Post.order("publish_date DESC").all
  end
end
