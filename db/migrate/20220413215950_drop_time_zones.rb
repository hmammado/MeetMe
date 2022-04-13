class DropTimeZones < ActiveRecord::Migration[7.0]
  def change
    drop_table :time_zones
  end
end
