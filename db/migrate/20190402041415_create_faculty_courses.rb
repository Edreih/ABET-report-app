class CreateFacultyCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :faculty_courses do |t|
      t.integer :course_id
      t.integer :faculty_id
      t.references :course
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
