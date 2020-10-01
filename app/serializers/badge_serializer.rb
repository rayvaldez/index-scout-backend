class BadgeSerializer < ActiveModel::Serializer
  attributes :id, :performance_buzz, :media_buzz, :capital_appreciation, :prime_time, :twilight_years
  has_one :player
end
