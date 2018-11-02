class Cohort < ApplicationRecord
  belongs_to :course
  has_one    :instructor
  has_many :students_cohorts, dependent: :destroy
  has_many :students, through: :students_cohorts
end
