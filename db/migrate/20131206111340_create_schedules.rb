class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :site
      t.string :title
      t.string :slug

      t.timestamps
    end
    add_index :schedules, :site_id
    add_column :events, :schedule_id, :integer
  end
end
