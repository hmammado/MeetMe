class RemoveMeetingTimeFromMeetings < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetings, :meeting_time, :time
  end
end
