class AddCountryIdToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :meeting_date, :date
    add_column :meetings, :meeting_time, :time
    add_reference :meetings, :country, foreign_key: true
    add_reference :meetings, :city, foreign_key: true
    add_reference :meetings, :timezone, foreign_key: true
  end
end
