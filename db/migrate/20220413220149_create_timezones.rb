class CreateTimezones < ActiveRecord::Migration[7.0]
  def change
    create_table :timezones do |t|
      t.string :name
      t.integer :difference

      t.timestamps
    end
  end
end
