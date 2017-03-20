class RatingSerializer < ActiveModel::Serializer
  attributes :reviewedBy, :safety, :performance, :technology, :interior, :reliability, :overall, :car_id
  belongs_to :car
end