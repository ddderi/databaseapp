class AddTeacherIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :teacher, foreign_key: true
  end
end
