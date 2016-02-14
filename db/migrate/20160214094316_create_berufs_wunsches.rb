class CreateBerufsWunsches < ActiveRecord::Migration
  def change
    create_table :berufs_wunsches do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
