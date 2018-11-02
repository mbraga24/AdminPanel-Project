class Student < ApplicationRecord
  validates :age, numericality:    { less_than:  151, message: "150 is the limit" }
  has_many :students_cohorts, dependent: :destroy
  has_many :cohorts, through: :students_cohorts
end
