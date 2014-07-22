class ChangingWaterSourceReservedWordType < ActiveRecord::Migration
  def change
    rename_column :water_sources, :type, :water_source_type
  end
end
