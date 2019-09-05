class Faculty < ApplicationRecord
  require 'csv'
  validates :email, presence: true, uniqueness: true

  has_many :courses, through: :faculty_courses
  has_many :faculty_courses

  accepts_nested_attributes_for :faculty_courses
  accepts_nested_attributes_for :courses

  # def self.import(file)
  #   imported_count = 0
  #   CSV.foreach(file.path, encoding: 'UTF-8', headers: true, header_converters: :symbol, converters: :all) do |row|
  #     if Faculty.exists?(email: row[:email])
  #       Rails.logger.warn("Faculty member with email #{row[:email]} already exists")
  #     else
  #       Faculty.create! row.to_hash
  #       imported_count += 1
  #     end
  #   end
  #   imported_count
  # end

  def self.import(file)
    CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
      Faculty.create! row.to_hash
    end
  end

  def fullname
    "#{fname} #{lname}"
  end
end
