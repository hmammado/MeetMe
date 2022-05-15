class City < ApplicationRecord
  belongs_to :country
  belongs_to :timezone
  has_and_belongs_to_many :meetings
end
