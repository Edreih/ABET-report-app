class RemoveColumnFromCourseCriterion < ActiveRecord::Migration[5.2]
  def change
    remove_column :course_criterions, :criterion_threshold_id
    add_column :course_criterions, :poor, :float
    add_column :course_criterions, :acceptable, :float
    add_column :course_criterions, :excellent, :float
  end
end
