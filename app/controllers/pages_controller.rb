class PagesController < ApplicationController
  def index
    @posts = Post.order("publish_date DESC").all
    
    @upcoming_events = Event.where("event_date > ?", Date.today).order("event_date ASC")
    @upcoming_events = @upcoming_events - [@showing, @social, @game_night]
  end

  def show
    @page = Page.find(params[:id])
  end

  def schedule
  end
end
