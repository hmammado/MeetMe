class RemoveCountryIdFromMeetings < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetings, :country_id
    remove_column :meetings, :city_id
    remove_column :meetings, :timezone_id
  end
end
