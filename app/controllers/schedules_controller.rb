class SchedulesController < ApplicationController
  def show
    @schedule = Schedule.find(params[:id])
    @schedule_archive = Schedule.where("NOT id = ?", @schedule.id).order("created_at DESC")
  end
end