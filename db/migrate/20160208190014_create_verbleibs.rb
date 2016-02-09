class CreateVerbleibs < ActiveRecord::Migration
  def change
    create_table :verbleibs do |t|
      t.string :titel

      t.timestamps null: false
    end
  end
end
