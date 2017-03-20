class Rating < ApplicationRecord
  belongs_to :car, dependent: :destroy
  
  validates :reviewedBy, presence: true
  validates :safety, :performance, :technology, :interior, :reliability, :overall, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  # after_save :overall_score

  # def overall_score
  # 	total, count = 0
  # 	arr = [safety, performance, technology, interior, reliability]
  # 	self.each do |key,value|
  # 		if arr.include?(key)
  # 			total += value
  # 			count += 1
  # 		end		
  # 	end	
  #   self.update(overall: total/count)
  # end
  	
end

