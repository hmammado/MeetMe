class City < ApplicationRecord
  has_many :city_meetings
  has_many :meetings, through: :city_meetings
  belongs_to :country
  belongs_to :timezone
end
