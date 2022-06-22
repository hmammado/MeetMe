class CityMeeting < ApplicationRecord
  belongs_to :meeting
  belongs_to :city
end
