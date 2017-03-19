class Car < ApplicationRecord
	validates :make, :model, :year, presence: true
	validates :year, numericality: { greater_than: 1900, less_than: 3000}
end
