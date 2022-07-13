class AddStudentIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :student_id, :integer, array: true, default: []
  end

  def down
    drop_table :teachers
  end
end
