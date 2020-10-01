class ReportSerializer < ActiveModel::Serializer
  attributes :id, :content, :name, :created_at
  has_one :player
end
