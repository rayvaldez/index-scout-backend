class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :team, :position, :price
  has_many :reports
  has_many :badges
end
