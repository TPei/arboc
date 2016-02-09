class CreateGeschlechts < ActiveRecord::Migration
  def change
    create_table :geschlechts do |t|
      t.string :titel

      t.timestamps null: false
    end
  end
end
