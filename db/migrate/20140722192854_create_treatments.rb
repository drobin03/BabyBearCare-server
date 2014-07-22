class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.belongs_to :water_source, index: true
      t.belongs_to :treatment_chemical, index: true

      t.timestamps
    end
  end
end
