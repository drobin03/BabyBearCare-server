class AddToxicityToScan < ActiveRecord::Migration
  def change
    add_column :fluoride_scans, :toxicity, :decimal
  end
end
