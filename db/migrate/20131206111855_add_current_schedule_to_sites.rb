class AddCurrentScheduleToSites < ActiveRecord::Migration
  def change
    add_column :sites, :current_schedule, :string
  end
end
