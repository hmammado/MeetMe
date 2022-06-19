class AddMeetingIdToCities < ActiveRecord::Migration[7.0]
  def change
    add_reference :cities, :meeting
  end
end
