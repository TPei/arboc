class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :salutation
      t.integer :class_level
      t.string :class_name
      t.belongs_to :school, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :schools
  end
end
