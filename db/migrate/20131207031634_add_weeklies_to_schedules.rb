class AddWeekliesToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :weekly_one, :string
    add_column :schedules, :weekly_two, :string
  end
end
