class RemoveArticleIdFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :article_id, :integer
  end
end
