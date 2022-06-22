class CreateCityMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :city_meetings do |t|
      t.references :meeting, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps
    end
  end
end
