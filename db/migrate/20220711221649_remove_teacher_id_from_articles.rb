class RemoveTeacherIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :teacher_id, :integer
  end
end
