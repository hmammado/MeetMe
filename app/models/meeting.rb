class Meeting < ApplicationRecord

  accepts_nested_attributes_for :cities, :countries, :timezones
end
