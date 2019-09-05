class RemoveColumnFromFaculty < ActiveRecord::Migration[5.2]
  def change
    remove_reference :faculties, :faculty_id_id
  end
end
