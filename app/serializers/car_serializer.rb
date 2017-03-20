class CarSerializer < ActiveModel::Serializer
  attributes :make, :model, :year
end