class AddArticleIdToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_reference :teachers, :article, foreign_key: true
  end
end
