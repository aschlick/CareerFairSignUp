class AddMajorDropDowns < ActiveRecord::Migration
  def change
    add_column :students, :major_1_id, :integer
    add_column :students, :major_2_id, :integer
    add_column :students, :major_3_id, :integer
  end
end
