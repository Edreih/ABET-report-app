class DropScoreColumnFromCourseCriterion < ActiveRecord::Migration[5.2]
  def change
    remove_column :course_criterions, :score
  end
end
