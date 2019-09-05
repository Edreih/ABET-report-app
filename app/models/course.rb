class Course < ApplicationRecord
  require 'csv'
  validates :name, :description, presence: true

  has_many :faculties, through: :faculty_courses
  has_many :faculty_courses

  has_many :criterions, through: :course_criterion
  has_many :course_criterion

  accepts_nested_attributes_for :faculty_courses
  accepts_nested_attributes_for :course_criterion

  def self.import(file)
    CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
      Course.create! row.to_hash
    end
  end
end
