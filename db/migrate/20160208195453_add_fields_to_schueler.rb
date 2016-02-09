class AddFieldsToSchueler < ActiveRecord::Migration
  def change
    add_column :schuelers, :wurde_beraten, :boolean
    add_column :schuelers, :freiwilliges_praktikum_abgeleistet, :boolean
    add_reference :schuelers, :schuljahr, index: true
    add_foreign_key :schuelers, :schuljahrs
  end
end
