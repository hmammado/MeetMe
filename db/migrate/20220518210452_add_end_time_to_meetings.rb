class AddEndTimeToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :end_time, :time
    add_column :meetings, :start_time, :time
  end
end
