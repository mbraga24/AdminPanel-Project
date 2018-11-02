class Instructor < ApplicationRecord
  validates :age, numericality:    { less_than:  151, message: "150 is the limit" }
  validates :age, numericality: { greater_than: 0, message: "Must be greater than 0" }
  validates :salary, numericality: { greater_than: 0, message: "Salary must be greater than 0" }
  belongs_to :cohort, {optional: true}
end
