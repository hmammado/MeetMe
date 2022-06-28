class Meeting < ApplicationRecord
  has_many :city_meetings
  has_many :cities, through: :city_meetings
  accepts_nested_attributes_for :city_meetings
  # has_many :countries, through: :cities
  # has_many :timezones, through: :cities
  # accepts_nested_attributes_for :cities
end
