class RemoveArticleIdFromTeachers < ActiveRecord::Migration[7.0]
  def change
    remove_column :teachers, :article_id, :integer
  end
end
