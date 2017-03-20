class Rating < ApplicationRecord
  belongs_to :car, dependent: :destroy
  
  validates :reviewedBy, presence: true
  validates :safety, :performance, :technology, :interior, :reliability, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  def overall_score
    self.update(overall: ((self.safety + self.performance + self.technology + self.interior + self.reliability)/5))
  end
  	
end

