class Criterion < ApplicationRecord
  has_many :courses, through: :course_criterion


  def name_plus_desc
    "#{name} - #{description}"
  end

end