class AddFieldsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :counseled, :boolean
    add_column :students, :voluntary_internship, :boolean
  end
end
