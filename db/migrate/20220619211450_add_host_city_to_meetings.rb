class AddHostCityToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :host_city, :string
    add_column :meetings, :city_one,  :string
    add_column :meetings, :city_two,  :string
    add_column :meetings, :city_three, :string
  end
end
