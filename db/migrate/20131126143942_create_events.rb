class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :event_type
      t.date :event_date
      t.time :event_time
      t.string :event_location

      t.timestamps
    end
  end
end
