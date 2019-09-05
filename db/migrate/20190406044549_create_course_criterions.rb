class CreateCourseCriterions < ActiveRecord::Migration[5.2]
  def change
    create_table :course_criterions do |t|
      t.float :score
      t.string :course
      t.string :description
      t.references :criterion_threshold, foreign_key: true
      t.references :course, foreign_key: true
      t.references :criterion, foreign_key: true

      t.timestamps
    end
  end
end
