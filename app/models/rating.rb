class Rating < ApplicationRecord
  belongs_to :car, dependent: :destroy
  
  validates :reviewedBy, presence: true
  validates :safety, :performance, :technology, :interior, :reliability, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  before_save :overall_score

  def overall_score
    self.overall = (self.safety + self.performance + self.technology + self.interior + self.reliability)/5
  end
  	
end

