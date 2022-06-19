class AddCityIdToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_reference :meetings, :city
  end
end
