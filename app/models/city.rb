class City < ApplicationRecord
  belongs_to :country
  belongs_to :timezone
  # belongs_to :meetings
end
