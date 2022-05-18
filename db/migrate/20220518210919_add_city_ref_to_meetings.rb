class AddCityRefToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_reference :meetings, :city, foreign_key: true
  end
end
