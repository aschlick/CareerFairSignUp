class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors_students do |t|
      t.references :major
      t.references :student
      t.timestamps
    end
  end
end
