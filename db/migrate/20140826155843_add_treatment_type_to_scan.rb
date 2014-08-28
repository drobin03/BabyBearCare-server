class AddTreatmentTypeToScan < ActiveRecord::Migration
  def change
    add_column :fluoride_scans, :home_treatment_type, :string
  end
end
