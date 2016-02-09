class CreateSchuljahrs < ActiveRecord::Migration
  def change
    create_table :schuljahrs do |t|
      t.string :name
      t.string :kuerzel

      t.timestamps null: false
    end
  end
end
