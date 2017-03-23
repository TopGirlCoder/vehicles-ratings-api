class RatingSerializer < ActiveModel::Serializer
	attributes :reviewedBy, :safety, :performance, :technology, :interior, :reliability, :overall
	belongs_to :car
end