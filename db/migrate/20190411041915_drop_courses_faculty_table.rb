class DropCoursesFacultyTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :courses_faculties
  end
end
