class Instructor < ApplicationRecord
  belongs_to :cohort
  has_many   :students
end
