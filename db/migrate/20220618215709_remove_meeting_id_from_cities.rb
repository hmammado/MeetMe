class RemoveMeetingIdFromCities < ActiveRecord::Migration[7.0]
  def change
    remove_column :cities, :meeting_id
  end
end
