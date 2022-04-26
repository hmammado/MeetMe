class AddMeetingsIdToCities < ActiveRecord::Migration[7.0]
  def change
    add_reference :cities, :meeting, foreign_key: true
  end
end
