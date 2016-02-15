class AddBerufsWunschToSchueler < ActiveRecord::Migration
  def self.up
    create_table :berufs_wunsches_schuelers, :id => false do |t|
      t.integer :berufs_wunsch_id
      t.integer :schueler_id
    end
  end

  def self.down
    drop_table :berufswunsch_schueler
  end
end
