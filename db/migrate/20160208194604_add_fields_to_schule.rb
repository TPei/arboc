class AddFieldsToSchule < ActiveRecord::Migration
  def change
    add_column :schules, :Kuerzel, :string
  end
end
