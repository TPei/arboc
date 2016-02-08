class CreateSchules < ActiveRecord::Migration
  def change
    create_table :schules do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
