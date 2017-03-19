class Rating < ApplicationRecord
  belongs_to :car
  
  validates :reviewedBy, presence: true
end
