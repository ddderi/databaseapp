class RemoveStudentIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :student_id, :integer
  end
end
