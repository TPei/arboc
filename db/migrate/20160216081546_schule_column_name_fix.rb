class SchuleColumnNameFix < ActiveRecord::Migration
  def change
    rename_column :schules, :Kuerzel, :kuerzel
  end
end
