class CreateWaterSources < ActiveRecord::Migration
  def change
    create_table :water_sources do |t|
      t.string :watershed
      t.string :name
      t.string :city
      t.decimal :latitude
      t.decimal :longitude
      t.string :type
      t.string :standard_geographic_code

      t.timestamps
    end
  end
end
