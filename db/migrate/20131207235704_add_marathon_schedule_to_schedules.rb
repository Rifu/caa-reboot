class AddMarathonScheduleToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :marathon_schedule, :text
  end
end
