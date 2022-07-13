class AddArticleIdToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :article_id, :integer, array: true, default: []
  end
end
