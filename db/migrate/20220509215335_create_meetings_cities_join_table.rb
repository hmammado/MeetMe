class CreateMeetingsCitiesJoinTable < ActiveRecord::Migration[7.0]
  def change
     create_join_table :meetings, :cities do |t|
      t.index :meeting_id
      t.index :city_id
    end
  end
end
