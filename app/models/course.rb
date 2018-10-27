class Course < ApplicationRecord
  validates :total_hours, numericality: { greater_than: 0, message: "Hours must be greater than 0" }
  has_many  :cohorts
  has_many  :students
end
