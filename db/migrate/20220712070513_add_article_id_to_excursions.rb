class AddArticleIdToExcursions < ActiveRecord::Migration[7.0]
  def change
    add_reference :excursions, :article, foreign_key: true
  end
end
