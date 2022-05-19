class DropCitiesMeetings < ActiveRecord::Migration[7.0]
  def change
    drop_table :cities_meetings
  end
end
