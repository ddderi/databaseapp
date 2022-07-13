class AddStudentIdToExcursions < ActiveRecord::Migration[7.0]
  def change
    add_reference :excursions, :student, foreign_key: true
  end
end
