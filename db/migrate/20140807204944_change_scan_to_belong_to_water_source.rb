class ChangeScanToBelongToWaterSource < ActiveRecord::Migration
  def change
    remove_column :fluoride_scans, :location
    add_column :fluoride_scans, :water_source_id, :integer
  end
end
