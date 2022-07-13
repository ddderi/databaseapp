class CreateStudentsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.text :name
      

      t.timestamps
    end
  end
end
