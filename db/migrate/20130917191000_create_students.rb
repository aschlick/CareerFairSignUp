class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :expected_graduation_year
      t.string :expected_graduation_season
      t.timestamps
    end

    create_table :majors do |t|
      t.string :name
      t.string :abbreviation
      t.timestamps
    end
  end
end
