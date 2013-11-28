class PagesController < ApplicationController
  def index
    @event = Event.first
  end
end
