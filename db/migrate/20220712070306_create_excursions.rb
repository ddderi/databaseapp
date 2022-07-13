class CreateExcursions < ActiveRecord::Migration[7.0]
  def change
    create_table :excursions do |t|
      t.datetime :excursion_date

      t.timestamps
    end
  end
end
