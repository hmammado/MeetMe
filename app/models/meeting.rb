class Meeting < ApplicationRecord
  has_many :cities
  accepts_nested_attributes_for :cities
end
