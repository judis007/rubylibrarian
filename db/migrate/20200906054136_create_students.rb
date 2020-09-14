class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student
      t.text :address
      t.timestamps
    end
  end
end
