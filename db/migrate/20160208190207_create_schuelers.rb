class CreateSchuelers < ActiveRecord::Migration
  def change
    create_table :schuelers do |t|
      t.string :vorname
      t.string :nachname
      t.belongs_to :geschlecht, index: true
      t.integer :klassenstufe
      t.string :klassenname
      t.belongs_to :schule, index: true
      t.belongs_to :verbleib, index: true

      t.timestamps null: false
    end
    add_foreign_key :schuelers, :geschlechts
    add_foreign_key :schuelers, :schules
    add_foreign_key :schuelers, :verbleibs
  end
end
