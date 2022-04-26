class Meeting < ApplicationRecord
  has_many :cities
  has_many :countries, through: :cities
  has_many :timezones, through: :cities
  accepts_nested_attributes_for :cities
end
