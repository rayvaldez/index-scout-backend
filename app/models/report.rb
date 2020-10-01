class Report < ApplicationRecord
  belongs_to :player

  def created_at
    attributes['created_at'].strftime("%m/%d/%Y %H:%M")
  end
end
