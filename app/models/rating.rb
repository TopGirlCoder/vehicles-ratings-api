class Rating < ApplicationRecord
  belongs_to :car
  
  validates :reviewedBy, presence: true
  # validates : numericality between 1-5
end

# To get all of the ratings
# Car.select('cars.id, cars.make, cars.model, cars.year, ratings.safety, ratings.performance, ratings.technology, ratings.interior, ratings.reliability, ratings.overall').joins(:ratings)