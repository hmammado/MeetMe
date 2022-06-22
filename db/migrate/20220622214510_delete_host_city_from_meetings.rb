class DeleteHostCityFromMeetings < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetings, :host_city, :string
    remove_column :meetings, :city_one,  :string
    remove_column :meetings, :city_two,  :string
    remove_column :meetings, :city_three, :string
  end
end
