class CreateTreatmentChemicals < ActiveRecord::Migration
  def change
    create_table :treatment_chemicals do |t|
      t.string :name

      t.timestamps
    end
  end
end
