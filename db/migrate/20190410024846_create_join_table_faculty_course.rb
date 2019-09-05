class CreateJoinTableFacultyCourse < ActiveRecord::Migration[5.2]
  def change
    create_join_table :faculties, :courses do |t|
      t.index [:faculty_id, :course_id]
      t.index [:course_id, :faculty_id]
    end
  end
end
