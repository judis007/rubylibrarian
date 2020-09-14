class CreateStudentColumnInBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :student_id, :int
  end
end
