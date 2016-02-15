class SchulesColumnFixes < ActiveRecord::Migration
  def change
    rename_column :schules, :kuerzel, :Kuerzel
  end
end
