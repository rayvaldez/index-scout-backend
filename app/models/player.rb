class Player < ApplicationRecord
  has_many :reports
  has_many :badges
end
