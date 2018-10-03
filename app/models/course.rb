class Course < ApplicationRecord
  has_one :cohort
  has_one :instructor
  has_many :students
end
