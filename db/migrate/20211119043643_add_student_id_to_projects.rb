class AddStudentIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :student_id, :integer
  end
end
