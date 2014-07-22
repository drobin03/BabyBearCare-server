class FluorideScan < ActiveRecord::Migration
  def change
    create_table :fluoride_scans do |t|
      t.integer :location
      t.string :water_type
      t.string :bar_code

      t.timestamps
    end
  end
end
