class RemoveCityIdFromMeetings < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetings, :city_id
  end
end
