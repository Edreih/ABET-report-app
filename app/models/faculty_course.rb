class FacultyCourse < ApplicationRecord
  belongs_to :course
  belongs_to :faculty

  #added this cause of gem but may need to delete
  has_many :faculties

  accepts_nested_attributes_for :faculties, allow_destroy: true
end
