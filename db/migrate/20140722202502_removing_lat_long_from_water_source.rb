class RemovingLatLongFromWaterSource < ActiveRecord::Migration
  def change
    remove_column :water_sources, :latitude
    remove_column :water_sources, :longitude
  end
end
